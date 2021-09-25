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
 rotemagent8 - rotemagent
 rotemagent9 - rotemagent
 rotemplaceholder - rotemplaceholder
 rover7store - store
 rover3store - store
 rover4store - store
 rover9store - store
 high_res - mode
 rover2store - store
 low_res - mode
 rover5store - store
 objective1 - objective
 objective0 - objective
 objective3 - objective
 objective2 - objective
 objective5 - objective
 objective4 - objective
 camera0 - camera
 rover8store - store
 camera1 - camera
 waypoint12 - waypoint
 camera3 - camera
 camera2 - camera
 rover0store - store
 general - lander
 camera6 - camera
 rover6store - store
 waypoint25 - waypoint
 waypoint24 - waypoint
 waypoint27 - waypoint
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
 rover8 - rover
 rover9 - rover
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
(P_ARTIFICIAL8000)
(P_ARTIFICIAL8001)
(P_ARTIFICIAL8002)
(P_ARTIFICIAL8003)
(P_ARTIFICIAL8004)
(P_ARTIFICIAL8005)
(P_ARTIFICIAL8006)
(P_ARTIFICIAL8007)
(P_ARTIFICIAL8008)
(P_ARTIFICIAL8009)
(P_ARTIFICIAL8010)
(P_ARTIFICIAL8011)
(P_ARTIFICIAL8012)
(P_ARTIFICIAL8013)
(P_ARTIFICIAL8014)
(P_ARTIFICIAL8015)
(P_ARTIFICIAL8016)
(P_ARTIFICIAL8017)
(P_ARTIFICIAL8018)
(P_ARTIFICIAL8019)
(P_ARTIFICIAL8020)
(P_ARTIFICIAL8021)
(P_ARTIFICIAL8022)
(P_ARTIFICIAL8023)
(P_ARTIFICIAL8024)
(P_ARTIFICIAL8025)
(P_ARTIFICIAL8026)
(P_ARTIFICIAL8027)
(P_ARTIFICIAL8028)
(P_ARTIFICIAL8029)
(P_ARTIFICIAL8030)
(P_ARTIFICIAL8031)
(P_ARTIFICIAL8032)
(P_ARTIFICIAL8033)
(P_ARTIFICIAL8034)
(P_ARTIFICIAL8035)
(P_ARTIFICIAL8036)
(P_ARTIFICIAL8037)
(P_ARTIFICIAL8038)
(P_ARTIFICIAL8039)
(P_ARTIFICIAL8040)
(P_ARTIFICIAL8041)
(P_ARTIFICIAL8042)
(P_ARTIFICIAL8043)
(P_ARTIFICIAL8044)
(P_ARTIFICIAL8045)
(P_ARTIFICIAL8046)
(P_ARTIFICIAL8047)
(P_ARTIFICIAL8048)
(P_ARTIFICIAL8049)
(P_ARTIFICIAL8050)
(P_ARTIFICIAL8051)
(P_ARTIFICIAL9000)
(P_ARTIFICIAL9001)
(P_ARTIFICIAL9002)
(P_ARTIFICIAL9003)
(P_ARTIFICIAL9004)
(P_ARTIFICIAL9005)
(P_ARTIFICIAL9006)
(P_ARTIFICIAL9007)
(P_ARTIFICIAL9008)
(P_ARTIFICIAL9009)
(P_ARTIFICIAL9010)
(P_ARTIFICIAL9011)
(P_ARTIFICIAL9012)
(P_ARTIFICIAL9013)
(P_ARTIFICIAL9014)
(P_ARTIFICIAL9015)
(P_ARTIFICIAL9016)
(P_ARTIFICIAL9017)
(P_ARTIFICIAL9018)
(P_ARTIFICIAL9019)
(P_ARTIFICIAL9020)
(P_ARTIFICIAL9021)
(P_ARTIFICIAL9022)
(P_ARTIFICIAL9023)
(P_ARTIFICIAL9024)
(P_ARTIFICIAL9025)
(P_ARTIFICIAL9026)
(P_ARTIFICIAL9027)
(P_ARTIFICIAL9028)
(P_ARTIFICIAL9029)
(P_ARTIFICIAL9030)
(P_ARTIFICIAL9031)
(P_ARTIFICIAL9032)
(P_ARTIFICIAL9033)
(P_ARTIFICIAL9034)
(P_ARTIFICIAL9035)
(P_ARTIFICIAL9036)
(P_ARTIFICIAL9037)
(P_ARTIFICIAL9038)
)

(:action dummy-init-action-rotemagent0
:precondition 
(and (can-use-init-action rotemagent0))
:effect 
(and (not (can-use-init-action rotemagent0)) (used-init-action rotemagent0) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_rock_sample waypoint6) (at_rock_sample waypoint8) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_rock_sample waypoint14) (at_rock_sample waypoint15) (at_rock_sample waypoint19) (at_rock_sample waypoint20) (at_soil_sample waypoint21) (at_soil_sample waypoint23) (at_soil_sample waypoint24) (at_rock_sample waypoint24) (at_soil_sample waypoint25) (at_rock_sample waypoint25) (at_rock_sample waypoint26) (at_rock_sample waypoint28) (at_rock_sample waypoint29) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store) (empty rover8store) (empty rover9store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7) (used-init-action rotemagent8) (used-init-action rotemagent9))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (not (used-init-action rotemagent8)) (not (used-init-action rotemagent9)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover0_rover0store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_rock_sample waypoint14) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint14)))
)

(:action sample_rock_rover0_rover0store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_rock_sample waypoint6) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint6)))
)

(:action sample_rock_rover0_rover0store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_rock_sample waypoint8) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint8)))
)

(:action sample_rock_rover0_rover0store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3 ) (at_rock_sample waypoint25) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint25)))
)

(:action drop_rover0_rover0store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover0store))
:effect 
(and (not (full rover0store)) (empty rover0store))
)

(:action communicate_rock_data_rover0_general_waypoint14_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL5 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover0_general_waypoint14_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL5 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover0_general_waypoint14_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL5 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action sample_rock_rover0_rover0store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_rock_sample waypoint4) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover0_rover0store_waypoint19
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_rock_sample waypoint19) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint19)))
)

(:action sample_rock_rover0_rover0store_waypoint28
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_rock_sample waypoint28) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint28)))
)

(:action sample_rock_rover0_rover0store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL11 ) (at_rock_sample waypoint20) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint20)))
)

(:action sample_rock_rover0_rover0store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_rock_sample waypoint10) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint10)))
)

(:action sample_rock_rover0_rover0store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_rock_sample waypoint15) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint15)))
)

(:action sample_rock_rover0_rover0store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_rock_sample waypoint24) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint24)))
)

(:action sample_rock_rover0_rover0store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_rock_sample waypoint9) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint9)))
)

(:action communicate_rock_data_rover0_general_waypoint6_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL16 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover0_general_waypoint8_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL17 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover0_general_waypoint25_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL18 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover0_general_waypoint6_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL16 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover0_general_waypoint8_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL17 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover0_general_waypoint25_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL18 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover0_general_waypoint14_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL5 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover0_general_waypoint6_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL16 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover0_general_waypoint8_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL17 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover0_general_waypoint25_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL18 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover0_general_waypoint6_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL16 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover0_general_waypoint8_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL17 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover0_general_waypoint25_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL18 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover0_general_waypoint14_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL5 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover0_general_waypoint6_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL16 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover0_general_waypoint8_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL17 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover0_general_waypoint25_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL18 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover0_general_waypoint14_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL5 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover0_general_waypoint6_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL16 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover0_general_waypoint8_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL17 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover0_general_waypoint25_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL18 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action sample_rock_rover0_rover0store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL19 ) (at_rock_sample waypoint12) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover0_rover0store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_rock_sample waypoint3) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint3)))
)

(:action sample_rock_rover0_rover0store_waypoint29
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL21 ) (at_rock_sample waypoint29) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint29)))
)

(:action sample_rock_rover0_rover0store_waypoint26
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL22 ) (at_rock_sample waypoint26) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint26)))
)

(:action communicate_rock_data_rover0_general_waypoint14_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL5 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover0_general_waypoint6_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL16 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover0_general_waypoint8_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL17 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover0_general_waypoint25_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL18 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL23 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint19_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL24 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover0_general_waypoint28_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL25 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover0_general_waypoint20_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL26 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover0_general_waypoint10_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL27 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover0_general_waypoint15_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL28 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover0_general_waypoint24_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL29 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover0_general_waypoint9_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL30 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL23 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint19_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL24 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover0_general_waypoint28_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL25 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover0_general_waypoint20_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL26 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover0_general_waypoint10_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL27 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover0_general_waypoint15_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL28 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover0_general_waypoint24_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL29 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover0_general_waypoint9_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL30 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL23 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint19_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL24 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover0_general_waypoint28_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL25 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover0_general_waypoint20_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL26 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover0_general_waypoint10_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL27 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover0_general_waypoint15_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL28 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover0_general_waypoint24_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL29 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover0_general_waypoint9_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL30 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL23 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint19_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL24 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover0_general_waypoint28_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL25 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover0_general_waypoint20_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL26 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover0_general_waypoint10_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL27 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover0_general_waypoint15_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL28 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover0_general_waypoint24_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL29 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover0_general_waypoint9_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL30 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL23 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint19_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL24 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover0_general_waypoint28_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL25 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover0_general_waypoint20_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL26 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover0_general_waypoint10_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL27 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover0_general_waypoint15_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL28 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover0_general_waypoint24_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL29 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover0_general_waypoint9_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL30 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover0_general_waypoint14_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL5 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover0_general_waypoint6_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL16 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover0_general_waypoint8_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL17 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover0_general_waypoint25_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL18 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL23 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint19_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL24 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover0_general_waypoint28_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL25 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover0_general_waypoint20_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL26 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover0_general_waypoint10_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL27 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover0_general_waypoint15_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL28 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover0_general_waypoint24_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL29 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover0_general_waypoint9_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL30 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL23 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint19_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL24 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover0_general_waypoint28_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL25 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover0_general_waypoint20_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL26 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover0_general_waypoint10_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL27 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover0_general_waypoint15_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL28 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover0_general_waypoint24_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL29 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover0_general_waypoint9_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL30 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL23 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint19_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL24 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover0_general_waypoint28_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL25 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover0_general_waypoint20_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL26 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover0_general_waypoint10_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL27 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover0_general_waypoint15_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL28 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover0_general_waypoint24_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL29 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover0_general_waypoint9_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL30 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL32 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL33 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint29_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL34 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover0_general_waypoint26_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL35 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL32 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL33 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint29_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL34 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover0_general_waypoint26_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL35 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL32 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL33 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint29_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL34 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover0_general_waypoint26_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL35 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL32 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL33 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint29_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL34 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover0_general_waypoint26_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL35 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL32 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL33 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint29_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL34 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover0_general_waypoint26_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL35 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL32 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL33 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint29_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL34 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover0_general_waypoint26_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL35 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL32 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL33 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint29_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL34 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover0_general_waypoint26_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL35 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL32 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL33 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint29_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL34 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover0_general_waypoint26_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL35 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL36 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL37 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL38 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL39 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL40 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL20 ) (at_lander general waypoint27) (P_ARTIFICIAL41 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL36 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL37 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL38 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL39 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL40 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint27) (P_ARTIFICIAL41 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL36 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL37 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL38 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL39 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL40 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint27) (P_ARTIFICIAL41 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL36 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL37 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL38 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL39 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL40 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint27) (P_ARTIFICIAL41 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL36 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL37 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL38 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL39 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL40 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint27) (P_ARTIFICIAL41 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL36 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL37 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL38 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL39 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL40 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_lander general waypoint27) (P_ARTIFICIAL41 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL36 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL37 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL38 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL39 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL40 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint27) (P_ARTIFICIAL41 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL36 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL37 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL38 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL39 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL40 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint27) (P_ARTIFICIAL41 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action dummy-init-action-rotemagent1
:precondition 
(and (can-use-init-action rotemagent1))
:effect 
(and (not (can-use-init-action rotemagent1)) (used-init-action rotemagent1) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_rock_sample waypoint6) (at_rock_sample waypoint8) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_rock_sample waypoint14) (at_rock_sample waypoint15) (at_rock_sample waypoint19) (at_rock_sample waypoint20) (at_soil_sample waypoint21) (at_soil_sample waypoint23) (at_soil_sample waypoint24) (at_rock_sample waypoint24) (at_soil_sample waypoint25) (at_rock_sample waypoint25) (at_rock_sample waypoint26) (at_rock_sample waypoint28) (at_rock_sample waypoint29) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store) (empty rover8store) (empty rover9store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7) (used-init-action rotemagent8) (used-init-action rotemagent9))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (not (used-init-action rotemagent8)) (not (used-init-action rotemagent9)) (regular-actions-stage rotemplaceholder))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint27) (P_ARTIFICIAL1001 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint27) (P_ARTIFICIAL1003 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint27) (P_ARTIFICIAL1004 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint27) (P_ARTIFICIAL1005 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint27) (P_ARTIFICIAL1006 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint27) (P_ARTIFICIAL1007 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint27) (P_ARTIFICIAL1008 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint27) (P_ARTIFICIAL1009 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint27) (P_ARTIFICIAL1010 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint27) (P_ARTIFICIAL1011 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint27) (P_ARTIFICIAL1012 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint27) (P_ARTIFICIAL1013 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint27) (P_ARTIFICIAL1001 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint27) (P_ARTIFICIAL1003 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint27) (P_ARTIFICIAL1004 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint27) (P_ARTIFICIAL1005 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint27) (P_ARTIFICIAL1006 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint27) (P_ARTIFICIAL1007 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint27) (P_ARTIFICIAL1008 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint27) (P_ARTIFICIAL1009 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint27) (P_ARTIFICIAL1010 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint27) (P_ARTIFICIAL1011 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint27) (P_ARTIFICIAL1012 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint27) (P_ARTIFICIAL1013 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint27) (P_ARTIFICIAL1001 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint27) (P_ARTIFICIAL1003 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint27) (P_ARTIFICIAL1004 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint27) (P_ARTIFICIAL1005 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint27) (P_ARTIFICIAL1006 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint27) (P_ARTIFICIAL1007 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint27) (P_ARTIFICIAL1008 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint27) (P_ARTIFICIAL1009 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint27) (P_ARTIFICIAL1010 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint27) (P_ARTIFICIAL1011 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint27) (P_ARTIFICIAL1012 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint27) (P_ARTIFICIAL1013 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1016 ) (at_lander general waypoint27) (P_ARTIFICIAL1001 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1016 ) (at_lander general waypoint27) (P_ARTIFICIAL1003 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1016 ) (at_lander general waypoint27) (P_ARTIFICIAL1004 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1016 ) (at_lander general waypoint27) (P_ARTIFICIAL1005 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1016 ) (at_lander general waypoint27) (P_ARTIFICIAL1006 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1016 ) (at_lander general waypoint27) (P_ARTIFICIAL1007 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1016 ) (at_lander general waypoint27) (P_ARTIFICIAL1008 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1016 ) (at_lander general waypoint27) (P_ARTIFICIAL1009 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1016 ) (at_lander general waypoint27) (P_ARTIFICIAL1010 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1016 ) (at_lander general waypoint27) (P_ARTIFICIAL1011 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1016 ) (at_lander general waypoint27) (P_ARTIFICIAL1012 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1016 ) (at_lander general waypoint27) (P_ARTIFICIAL1013 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint27) (P_ARTIFICIAL1001 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint27) (P_ARTIFICIAL1003 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint27) (P_ARTIFICIAL1004 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint27) (P_ARTIFICIAL1005 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint27) (P_ARTIFICIAL1006 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint27) (P_ARTIFICIAL1007 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint27) (P_ARTIFICIAL1008 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint27) (P_ARTIFICIAL1009 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint27) (P_ARTIFICIAL1010 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint27) (P_ARTIFICIAL1011 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint27) (P_ARTIFICIAL1012 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint27) (P_ARTIFICIAL1013 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint27) (P_ARTIFICIAL1001 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint27) (P_ARTIFICIAL1003 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint27) (P_ARTIFICIAL1004 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint27) (P_ARTIFICIAL1005 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint27) (P_ARTIFICIAL1006 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint27) (P_ARTIFICIAL1007 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint27) (P_ARTIFICIAL1008 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint27) (P_ARTIFICIAL1009 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint27) (P_ARTIFICIAL1010 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint27) (P_ARTIFICIAL1011 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint27) (P_ARTIFICIAL1012 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint27) (P_ARTIFICIAL1013 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint27) (P_ARTIFICIAL1001 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint27) (P_ARTIFICIAL1003 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint27) (P_ARTIFICIAL1004 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint27) (P_ARTIFICIAL1005 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint27) (P_ARTIFICIAL1006 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint27) (P_ARTIFICIAL1007 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint27) (P_ARTIFICIAL1008 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint27) (P_ARTIFICIAL1009 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint27) (P_ARTIFICIAL1010 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint27) (P_ARTIFICIAL1011 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint27) (P_ARTIFICIAL1012 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint27) (P_ARTIFICIAL1013 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint27) (P_ARTIFICIAL1001 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint27) (P_ARTIFICIAL1003 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint27) (P_ARTIFICIAL1004 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint27) (P_ARTIFICIAL1005 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint27) (P_ARTIFICIAL1006 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint27) (P_ARTIFICIAL1007 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint27) (P_ARTIFICIAL1008 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint27) (P_ARTIFICIAL1009 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint27) (P_ARTIFICIAL1010 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint27) (P_ARTIFICIAL1011 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint27) (P_ARTIFICIAL1012 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint27) (P_ARTIFICIAL1013 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action dummy-init-action-rotemagent2
:precondition 
(and (can-use-init-action rotemagent2))
:effect 
(and (not (can-use-init-action rotemagent2)) (used-init-action rotemagent2) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_rock_sample waypoint6) (at_rock_sample waypoint8) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_rock_sample waypoint14) (at_rock_sample waypoint15) (at_rock_sample waypoint19) (at_rock_sample waypoint20) (at_soil_sample waypoint21) (at_soil_sample waypoint23) (at_soil_sample waypoint24) (at_rock_sample waypoint24) (at_soil_sample waypoint25) (at_rock_sample waypoint25) (at_rock_sample waypoint26) (at_rock_sample waypoint28) (at_rock_sample waypoint29) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store) (empty rover8store) (empty rover9store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7) (used-init-action rotemagent8) (used-init-action rotemagent9))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (not (used-init-action rotemagent8)) (not (used-init-action rotemagent9)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover2_rover2store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_soil_sample waypoint2) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint2)))
)

(:action sample_soil_rover2_rover2store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_soil_sample waypoint11) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint11)))
)

(:action sample_rock_rover2_rover2store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_rock_sample waypoint14) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint14)))
)

(:action sample_soil_rover2_rover2store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_soil_sample waypoint21) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint21)))
)

(:action sample_soil_rover2_rover2store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_soil_sample waypoint24) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint24)))
)

(:action sample_soil_rover2_rover2store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_soil_sample waypoint25) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint25)))
)

(:action sample_soil_rover2_rover2store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_soil_sample waypoint0) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint0)))
)

(:action sample_rock_rover2_rover2store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_rock_sample waypoint9) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint9)))
)

(:action sample_rock_rover2_rover2store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_rock_sample waypoint24) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint24)))
)

(:action sample_rock_rover2_rover2store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_rock_sample waypoint25) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint25)))
)

(:action sample_rock_rover2_rover2store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_rock_sample waypoint6) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint6)))
)

(:action sample_rock_rover2_rover2store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_rock_sample waypoint8) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint8)))
)

(:action drop_rover2_rover2store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover2store))
:effect 
(and (not (full rover2store)) (empty rover2store))
)

(:action communicate_soil_data_rover2_general_waypoint2_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2011 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover2_general_waypoint11_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2013 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover2_general_waypoint2_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2011 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover2_general_waypoint11_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2013 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover2_general_waypoint2_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2011 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover2_general_waypoint11_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2013 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover2_general_waypoint2_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2011 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover2_general_waypoint11_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2013 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover2_general_waypoint2_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2011 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover2_general_waypoint11_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2013 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2016 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2016 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2016 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2016 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2016 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action sample_soil_rover2_rover2store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_soil_sample waypoint12) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover2_rover2store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_soil_sample waypoint3) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint3)))
)

(:action sample_soil_rover2_rover2store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_soil_sample waypoint1) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint1)))
)

(:action sample_rock_rover2_rover2store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_rock_sample waypoint4) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover2_rover2store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2021 ) (at_rock_sample waypoint10) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint10)))
)

(:action sample_rock_rover2_rover2store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_rock_sample waypoint12) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover2_rover2store_waypoint26
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2022 ) (at_rock_sample waypoint26) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint26)))
)

(:action sample_rock_rover2_rover2store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_rock_sample waypoint3) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint3)))
)

(:action sample_rock_rover2_rover2store_waypoint19
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2023 ) (at_rock_sample waypoint19) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint19)))
)

(:action sample_rock_rover2_rover2store_waypoint28
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_rock_sample waypoint28) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint28)))
)

(:action communicate_soil_data_rover2_general_waypoint2_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2011 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover2_general_waypoint11_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2013 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover2_general_waypoint21_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2025 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover2_general_waypoint24_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2026 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover2_general_waypoint25_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2027 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2028 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint21_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2025 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover2_general_waypoint24_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2026 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover2_general_waypoint25_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2027 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2028 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint21_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2025 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover2_general_waypoint24_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2026 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover2_general_waypoint25_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2027 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2028 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint21_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2025 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover2_general_waypoint24_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2026 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover2_general_waypoint25_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2027 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2028 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint21_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2025 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover2_general_waypoint24_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2026 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover2_general_waypoint25_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2027 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2028 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint21_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2025 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover2_general_waypoint24_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2026 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover2_general_waypoint25_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2027 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2028 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint2_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2011 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover2_general_waypoint11_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2013 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover2_general_waypoint21_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2025 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover2_general_waypoint24_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2026 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover2_general_waypoint25_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2027 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2028 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2016 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2029 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2030 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint25_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2031 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2032 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2033 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2029 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2030 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint25_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2031 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2032 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2033 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2029 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2030 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint25_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2031 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2032 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2033 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2029 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2030 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint25_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2031 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2032 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2033 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2029 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2030 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint25_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2031 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2032 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2033 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2029 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2030 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint25_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2031 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2032 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2033 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2016 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2029 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2030 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint25_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2031 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2032 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2033 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2034 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint3_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2035 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover2_general_waypoint1_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2036 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2034 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint3_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2035 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover2_general_waypoint1_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2036 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2034 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint3_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2035 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover2_general_waypoint1_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2036 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2034 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint3_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2035 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover2_general_waypoint1_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2036 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2034 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint3_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2035 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover2_general_waypoint1_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2036 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2034 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint3_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2035 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover2_general_waypoint1_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2036 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2034 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint3_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2035 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover2_general_waypoint1_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2036 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2037 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint10_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2038 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2039 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint26_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2040 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover2_general_waypoint3_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2041 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover2_general_waypoint19_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2042 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint27) (P_ARTIFICIAL2043 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2037 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint10_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2038 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2039 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint26_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2040 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover2_general_waypoint3_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2041 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover2_general_waypoint19_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2042 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint27) (P_ARTIFICIAL2043 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2037 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint10_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2038 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2039 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint26_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2040 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover2_general_waypoint3_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2041 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover2_general_waypoint19_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2042 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint27) (P_ARTIFICIAL2043 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2037 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint10_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2038 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2039 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint26_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2040 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover2_general_waypoint3_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2041 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover2_general_waypoint19_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2042 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint27) (P_ARTIFICIAL2043 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2037 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint10_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2038 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2039 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint26_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2040 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover2_general_waypoint3_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2041 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover2_general_waypoint19_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2042 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint27) (P_ARTIFICIAL2043 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2037 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint10_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2038 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2039 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint26_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2040 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover2_general_waypoint3_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2041 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover2_general_waypoint19_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2042 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint27) (P_ARTIFICIAL2043 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2037 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint10_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2038 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2039 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint26_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2040 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover2_general_waypoint3_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2041 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover2_general_waypoint19_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2042 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2024 ) (at_lander general waypoint27) (P_ARTIFICIAL2043 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL2012 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action dummy-init-action-rotemagent3
:precondition 
(and (can-use-init-action rotemagent3))
:effect 
(and (not (can-use-init-action rotemagent3)) (used-init-action rotemagent3) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_rock_sample waypoint6) (at_rock_sample waypoint8) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_rock_sample waypoint14) (at_rock_sample waypoint15) (at_rock_sample waypoint19) (at_rock_sample waypoint20) (at_soil_sample waypoint21) (at_soil_sample waypoint23) (at_soil_sample waypoint24) (at_rock_sample waypoint24) (at_soil_sample waypoint25) (at_rock_sample waypoint25) (at_rock_sample waypoint26) (at_rock_sample waypoint28) (at_rock_sample waypoint29) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store) (empty rover8store) (empty rover9store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7) (used-init-action rotemagent8) (used-init-action rotemagent9))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (not (used-init-action rotemagent8)) (not (used-init-action rotemagent9)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover3_rover3store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_soil_sample waypoint3) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint3)))
)

(:action sample_rock_rover3_rover3store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_rock_sample waypoint3) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint3)))
)

(:action sample_rock_rover3_rover3store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_rock_sample waypoint10) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint10)))
)

(:action drop_rover3_rover3store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover3store))
:effect 
(and (not (full rover3store)) (empty rover3store))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3002 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3004 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action sample_soil_rover3_rover3store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_soil_sample waypoint21) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint21)))
)

(:action sample_soil_rover3_rover3store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_soil_sample waypoint24) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint24)))
)

(:action sample_rock_rover3_rover3store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_rock_sample waypoint4) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover3_rover3store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_rock_sample waypoint9) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint9)))
)

(:action sample_rock_rover3_rover3store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_rock_sample waypoint14) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint14)))
)

(:action sample_rock_rover3_rover3store_waypoint19
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_rock_sample waypoint19) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint19)))
)

(:action sample_rock_rover3_rover3store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_rock_sample waypoint20) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint20)))
)

(:action sample_rock_rover3_rover3store_waypoint26
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_rock_sample waypoint26) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint26)))
)

(:action sample_rock_rover3_rover3store_waypoint29
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3013 ) (at_rock_sample waypoint29) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint29)))
)

(:action sample_rock_rover3_rover3store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_rock_sample waypoint8) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint8)))
)

(:action sample_rock_rover3_rover3store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_rock_sample waypoint15) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint15)))
)

(:action sample_rock_rover3_rover3store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_rock_sample waypoint24) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint24)))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3002 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3002 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3002 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3002 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3002 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3018 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3004 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3018 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3004 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3018 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3004 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3018 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3004 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3018 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3004 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3018 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3019 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3020 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3021 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3022 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective4_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3023 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover3_general_objective5_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3024 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3019 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3020 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3021 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3022 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective4_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3023 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover3_general_objective5_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3024 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3019 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3020 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3021 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3022 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective4_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3023 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover3_general_objective5_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3024 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3019 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3020 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3021 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3022 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective4_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3023 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover3_general_objective5_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3024 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3019 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3020 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3021 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3022 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective4_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3023 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover3_general_objective5_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3024 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3019 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3020 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3021 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3022 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective4_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3023 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover3_general_objective5_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3024 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action sample_soil_rover3_rover3store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3025 ) (at_soil_sample waypoint12) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover3_rover3store_waypoint23
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3026 ) (at_soil_sample waypoint23) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint23)))
)

(:action sample_soil_rover3_rover3store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3027 ) (at_soil_sample waypoint2) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint2)))
)

(:action sample_soil_rover3_rover3store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3028 ) (at_soil_sample waypoint0) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover3_rover3store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_soil_sample waypoint25) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint25)))
)

(:action sample_rock_rover3_rover3store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3030 ) (at_rock_sample waypoint6) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint6)))
)

(:action sample_rock_rover3_rover3store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3025 ) (at_rock_sample waypoint12) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover3_rover3store_waypoint28
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_rock_sample waypoint28) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint28)))
)

(:action sample_rock_rover3_rover3store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_rock_sample waypoint25) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint25)))
)

(:action communicate_soil_data_rover3_general_waypoint21_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3032 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3033 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint21_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3032 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3033 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint21_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3032 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3033 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint21_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3032 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3033 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint21_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3032 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3033 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3002 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint21_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3032 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3033 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint21_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3032 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3033 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3002 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint21_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3032 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3033 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3035 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3036 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint14_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3037 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover3_general_waypoint19_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3038 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3039 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint26_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3040 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover3_general_waypoint29_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3041 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3042 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3043 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint24_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3044 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3035 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3036 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint14_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3037 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover3_general_waypoint19_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3038 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3039 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint26_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3040 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover3_general_waypoint29_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3041 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3042 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3043 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint24_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3044 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3035 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3036 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint14_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3037 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover3_general_waypoint19_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3038 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3039 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint26_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3040 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover3_general_waypoint29_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3041 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3042 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3043 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint24_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3044 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3035 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3036 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint14_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3037 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover3_general_waypoint19_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3038 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3039 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint26_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3040 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover3_general_waypoint29_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3041 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3042 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3043 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint24_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3044 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3035 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3036 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint14_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3037 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover3_general_waypoint19_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3038 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3039 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint26_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3040 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover3_general_waypoint29_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3041 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3042 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3043 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint24_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3044 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3004 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3018 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3035 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3036 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint14_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3037 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover3_general_waypoint19_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3038 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3039 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint26_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3040 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover3_general_waypoint29_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3041 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3042 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3043 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint24_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3044 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3035 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3036 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint14_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3037 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover3_general_waypoint19_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3038 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3039 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint26_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3040 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover3_general_waypoint29_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3041 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3042 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3043 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint24_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3044 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3004 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3018 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3035 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3036 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint14_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3037 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover3_general_waypoint19_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3038 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3039 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint26_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3040 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover3_general_waypoint29_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3041 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3042 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3043 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint24_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3044 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3019 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3020 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3021 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3022 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective4_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3023 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover3_general_objective5_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3024 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3019 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3020 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3021 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3022 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective4_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3023 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover3_general_objective5_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3024 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action sample_soil_rover3_rover3store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3045 ) (at_soil_sample waypoint11) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint11)))
)

(:action sample_soil_rover3_rover3store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3046 ) (at_soil_sample waypoint1) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint1)))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3047 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3048 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3049 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3050 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint25_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3051 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3047 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3048 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3049 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3050 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint25_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3051 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3047 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3048 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3049 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3050 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint25_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3051 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3047 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3048 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3049 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3050 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint25_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3051 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3047 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3048 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3049 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3050 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint25_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3051 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3047 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3048 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3049 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3050 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint25_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3051 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3047 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3048 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3049 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3050 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint25_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3051 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3047 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3048 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3049 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3050 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint25_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3051 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3052 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3053 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint28_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3054 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover3_general_waypoint25_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3055 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3052 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3053 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint28_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3054 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover3_general_waypoint25_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3055 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3052 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3053 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint28_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3054 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover3_general_waypoint25_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3055 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3052 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3053 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint28_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3054 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover3_general_waypoint25_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3055 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3052 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3053 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint28_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3054 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover3_general_waypoint25_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3055 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3052 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3053 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint28_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3054 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover3_general_waypoint25_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3055 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3052 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3053 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint28_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3054 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover3_general_waypoint25_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3055 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3052 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3053 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint28_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3054 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover3_general_waypoint25_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3055 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3056 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint27) (P_ARTIFICIAL3057 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3056 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint27) (P_ARTIFICIAL3057 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3056 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint27) (P_ARTIFICIAL3057 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3056 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint27) (P_ARTIFICIAL3057 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3056 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint27) (P_ARTIFICIAL3057 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3056 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_lander general waypoint27) (P_ARTIFICIAL3057 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3056 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint27) (P_ARTIFICIAL3057 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3056 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3031 ) (at_lander general waypoint27) (P_ARTIFICIAL3057 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action dummy-init-action-rotemagent4
:precondition 
(and (can-use-init-action rotemagent4))
:effect 
(and (not (can-use-init-action rotemagent4)) (used-init-action rotemagent4) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_rock_sample waypoint6) (at_rock_sample waypoint8) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_rock_sample waypoint14) (at_rock_sample waypoint15) (at_rock_sample waypoint19) (at_rock_sample waypoint20) (at_soil_sample waypoint21) (at_soil_sample waypoint23) (at_soil_sample waypoint24) (at_rock_sample waypoint24) (at_soil_sample waypoint25) (at_rock_sample waypoint25) (at_rock_sample waypoint26) (at_rock_sample waypoint28) (at_rock_sample waypoint29) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store) (empty rover8store) (empty rover9store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7) (used-init-action rotemagent8) (used-init-action rotemagent9))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (not (used-init-action rotemagent8)) (not (used-init-action rotemagent9)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover4_rover4store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_rock_sample waypoint10) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint10)))
)

(:action sample_rock_rover4_rover4store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4001 ) (at_rock_sample waypoint14) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint14)))
)

(:action sample_rock_rover4_rover4store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_rock_sample waypoint3) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint3)))
)

(:action sample_rock_rover4_rover4store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_rock_sample waypoint4) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover4_rover4store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_rock_sample waypoint8) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint8)))
)

(:action sample_rock_rover4_rover4store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_rock_sample waypoint9) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint9)))
)

(:action sample_rock_rover4_rover4store_waypoint19
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4006 ) (at_rock_sample waypoint19) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint19)))
)

(:action sample_rock_rover4_rover4store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_rock_sample waypoint20) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint20)))
)

(:action sample_rock_rover4_rover4store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_rock_sample waypoint24) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint24)))
)

(:action sample_rock_rover4_rover4store_waypoint26
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_rock_sample waypoint26) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint26)))
)

(:action sample_rock_rover4_rover4store_waypoint29
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_rock_sample waypoint29) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint29)))
)

(:action sample_rock_rover4_rover4store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_rock_sample waypoint6) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint6)))
)

(:action sample_rock_rover4_rover4store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_rock_sample waypoint25) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint25)))
)

(:action sample_rock_rover4_rover4store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_rock_sample waypoint15) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint15)))
)

(:action sample_rock_rover4_rover4store_waypoint28
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_rock_sample waypoint28) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint28)))
)

(:action drop_rover4_rover4store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover4store))
:effect 
(and (not (full rover4store)) (empty rover4store))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4015 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4017 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4015 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4017 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4015 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4017 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4015 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4017 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4015 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4017 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4015 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4017 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4015 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4017 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4015 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4017 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action sample_rock_rover4_rover4store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_rock_sample waypoint12) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint12)))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4022 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4023 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint8_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4024 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4025 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint19_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4026 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4027 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4028 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint26_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4029 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover4_general_waypoint29_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4030 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4031 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint25_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4032 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4033 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4034 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4022 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4023 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint8_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4024 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4025 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint19_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4026 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4027 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4028 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint26_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4029 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover4_general_waypoint29_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4030 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4031 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint25_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4032 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4033 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4034 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4022 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4023 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint8_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4024 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4025 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint19_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4026 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4027 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4028 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint26_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4029 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover4_general_waypoint29_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4030 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4031 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint25_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4032 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4033 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4034 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4022 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4023 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint8_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4024 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4025 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint19_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4026 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4027 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4028 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint26_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4029 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover4_general_waypoint29_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4030 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4031 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint25_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4032 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4033 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4034 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4022 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4023 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint8_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4024 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4025 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint19_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4026 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4027 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4028 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint26_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4029 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover4_general_waypoint29_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4030 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4031 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint25_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4032 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4033 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4034 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4022 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4023 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint8_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4024 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4025 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint19_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4026 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4027 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4028 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint26_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4029 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover4_general_waypoint29_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4030 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4031 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint25_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4032 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4033 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4034 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4022 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4023 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint8_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4024 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4025 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint19_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4026 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4027 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4028 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint26_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4029 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover4_general_waypoint29_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4030 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4031 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint25_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4032 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4033 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4034 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4022 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4023 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint8_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4024 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4025 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint19_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4026 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4027 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4028 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint26_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4029 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover4_general_waypoint29_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4030 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4031 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint25_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4032 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4033 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4034 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4035 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4036 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4037 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4038 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4039 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4040 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4041 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4042 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4043 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4044 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4045 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4046 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4047 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4048 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4049 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4050 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4051 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4052 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4035 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4036 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4037 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4038 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4039 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4040 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4041 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4042 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4043 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4044 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4045 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4046 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4047 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4048 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4049 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4050 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4051 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4052 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4035 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4036 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4037 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4038 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4039 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4040 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4041 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4042 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4043 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4044 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4045 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4046 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4047 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4048 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4049 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4050 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4051 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4052 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4035 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4036 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4037 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4038 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4039 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4040 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4041 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4042 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4043 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4044 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4045 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4046 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4047 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4048 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4049 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4050 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4051 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4052 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4035 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4036 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4037 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4038 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4039 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4040 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4041 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4042 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4043 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4044 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4045 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4046 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4047 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4048 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4049 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4050 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4051 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4052 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4035 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4036 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4037 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4038 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4039 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4040 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4041 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4042 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4043 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4044 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4045 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4046 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4047 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4048 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4049 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4050 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4051 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4052 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4035 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4036 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4037 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4038 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4039 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4040 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4041 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4042 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4043 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4044 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4045 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4046 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4047 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4048 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4049 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4050 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4051 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4052 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4035 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4036 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4037 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4038 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4039 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4040 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4041 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4042 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4043 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4044 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4045 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4046 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4047 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4048 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4049 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4050 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4051 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4052 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint27) (P_ARTIFICIAL4053 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint27) (P_ARTIFICIAL4053 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint27) (P_ARTIFICIAL4053 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint27) (P_ARTIFICIAL4053 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint27) (P_ARTIFICIAL4053 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint27) (P_ARTIFICIAL4053 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint27) (P_ARTIFICIAL4053 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint27) (P_ARTIFICIAL4053 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL4016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action dummy-init-action-rotemagent5
:precondition 
(and (can-use-init-action rotemagent5))
:effect 
(and (not (can-use-init-action rotemagent5)) (used-init-action rotemagent5) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_rock_sample waypoint6) (at_rock_sample waypoint8) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_rock_sample waypoint14) (at_rock_sample waypoint15) (at_rock_sample waypoint19) (at_rock_sample waypoint20) (at_soil_sample waypoint21) (at_soil_sample waypoint23) (at_soil_sample waypoint24) (at_rock_sample waypoint24) (at_soil_sample waypoint25) (at_rock_sample waypoint25) (at_rock_sample waypoint26) (at_rock_sample waypoint28) (at_rock_sample waypoint29) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store) (empty rover8store) (empty rover9store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7) (used-init-action rotemagent8) (used-init-action rotemagent9))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (not (used-init-action rotemagent8)) (not (used-init-action rotemagent9)) (regular-actions-stage rotemplaceholder))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_lander general waypoint27) (P_ARTIFICIAL5001 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_lander general waypoint27) (P_ARTIFICIAL5003 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_lander general waypoint27) (P_ARTIFICIAL5004 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_lander general waypoint27) (P_ARTIFICIAL5005 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_lander general waypoint27) (P_ARTIFICIAL5006 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_lander general waypoint27) (P_ARTIFICIAL5007 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_lander general waypoint27) (P_ARTIFICIAL5008 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_lander general waypoint27) (P_ARTIFICIAL5009 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_lander general waypoint27) (P_ARTIFICIAL5010 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_lander general waypoint27) (P_ARTIFICIAL5011 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_lander general waypoint27) (P_ARTIFICIAL5012 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_lander general waypoint27) (P_ARTIFICIAL5013 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5014 ) (at_lander general waypoint27) (P_ARTIFICIAL5001 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5014 ) (at_lander general waypoint27) (P_ARTIFICIAL5003 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5014 ) (at_lander general waypoint27) (P_ARTIFICIAL5004 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5014 ) (at_lander general waypoint27) (P_ARTIFICIAL5005 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5014 ) (at_lander general waypoint27) (P_ARTIFICIAL5006 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5014 ) (at_lander general waypoint27) (P_ARTIFICIAL5007 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5014 ) (at_lander general waypoint27) (P_ARTIFICIAL5008 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5014 ) (at_lander general waypoint27) (P_ARTIFICIAL5009 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5014 ) (at_lander general waypoint27) (P_ARTIFICIAL5010 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5014 ) (at_lander general waypoint27) (P_ARTIFICIAL5011 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5014 ) (at_lander general waypoint27) (P_ARTIFICIAL5012 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5014 ) (at_lander general waypoint27) (P_ARTIFICIAL5013 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint27) (P_ARTIFICIAL5001 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint27) (P_ARTIFICIAL5003 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint27) (P_ARTIFICIAL5004 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint27) (P_ARTIFICIAL5005 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint27) (P_ARTIFICIAL5006 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint27) (P_ARTIFICIAL5007 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint27) (P_ARTIFICIAL5008 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint27) (P_ARTIFICIAL5009 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint27) (P_ARTIFICIAL5010 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint27) (P_ARTIFICIAL5011 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint27) (P_ARTIFICIAL5012 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint27) (P_ARTIFICIAL5013 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint27) (P_ARTIFICIAL5001 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint27) (P_ARTIFICIAL5003 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint27) (P_ARTIFICIAL5004 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint27) (P_ARTIFICIAL5005 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint27) (P_ARTIFICIAL5006 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint27) (P_ARTIFICIAL5007 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint27) (P_ARTIFICIAL5008 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint27) (P_ARTIFICIAL5009 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint27) (P_ARTIFICIAL5010 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint27) (P_ARTIFICIAL5011 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint27) (P_ARTIFICIAL5012 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint27) (P_ARTIFICIAL5013 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint27) (P_ARTIFICIAL5001 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint27) (P_ARTIFICIAL5003 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint27) (P_ARTIFICIAL5004 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint27) (P_ARTIFICIAL5005 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint27) (P_ARTIFICIAL5006 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint27) (P_ARTIFICIAL5007 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint27) (P_ARTIFICIAL5008 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint27) (P_ARTIFICIAL5009 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint27) (P_ARTIFICIAL5010 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint27) (P_ARTIFICIAL5011 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint27) (P_ARTIFICIAL5012 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint27) (P_ARTIFICIAL5013 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint27) (P_ARTIFICIAL5001 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint27) (P_ARTIFICIAL5003 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint27) (P_ARTIFICIAL5004 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint27) (P_ARTIFICIAL5005 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint27) (P_ARTIFICIAL5006 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint27) (P_ARTIFICIAL5007 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint27) (P_ARTIFICIAL5008 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint27) (P_ARTIFICIAL5009 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint27) (P_ARTIFICIAL5010 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint27) (P_ARTIFICIAL5011 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint27) (P_ARTIFICIAL5012 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint27) (P_ARTIFICIAL5013 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint27) (P_ARTIFICIAL5001 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint27) (P_ARTIFICIAL5003 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint27) (P_ARTIFICIAL5004 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint27) (P_ARTIFICIAL5005 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint27) (P_ARTIFICIAL5006 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint27) (P_ARTIFICIAL5007 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint27) (P_ARTIFICIAL5008 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint27) (P_ARTIFICIAL5009 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint27) (P_ARTIFICIAL5010 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint27) (P_ARTIFICIAL5011 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint27) (P_ARTIFICIAL5012 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint27) (P_ARTIFICIAL5013 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint27) (P_ARTIFICIAL5001 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint27) (P_ARTIFICIAL5003 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint27) (P_ARTIFICIAL5004 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint27) (P_ARTIFICIAL5005 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint27) (P_ARTIFICIAL5006 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint27) (P_ARTIFICIAL5007 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint27) (P_ARTIFICIAL5008 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint27) (P_ARTIFICIAL5009 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint27) (P_ARTIFICIAL5010 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint27) (P_ARTIFICIAL5011 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint27) (P_ARTIFICIAL5012 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint27) (P_ARTIFICIAL5013 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action dummy-init-action-rotemagent6
:precondition 
(and (can-use-init-action rotemagent6))
:effect 
(and (not (can-use-init-action rotemagent6)) (used-init-action rotemagent6) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_rock_sample waypoint6) (at_rock_sample waypoint8) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_rock_sample waypoint14) (at_rock_sample waypoint15) (at_rock_sample waypoint19) (at_rock_sample waypoint20) (at_soil_sample waypoint21) (at_soil_sample waypoint23) (at_soil_sample waypoint24) (at_rock_sample waypoint24) (at_soil_sample waypoint25) (at_rock_sample waypoint25) (at_rock_sample waypoint26) (at_rock_sample waypoint28) (at_rock_sample waypoint29) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store) (empty rover8store) (empty rover9store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7) (used-init-action rotemagent8) (used-init-action rotemagent9))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (not (used-init-action rotemagent8)) (not (used-init-action rotemagent9)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover6_rover6store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_soil_sample waypoint3) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint3)))
)

(:action sample_rock_rover6_rover6store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_rock_sample waypoint3) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint3)))
)

(:action sample_soil_rover6_rover6store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6001 ) (at_soil_sample waypoint21) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint21)))
)

(:action sample_rock_rover6_rover6store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6002 ) (at_rock_sample waypoint10) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint10)))
)

(:action drop_rover6_rover6store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover6store))
:effect 
(and (not (full rover6store)) (empty rover6store))
)

(:action communicate_soil_data_rover6_general_waypoint3_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6003 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_rock_data_rover6_general_waypoint3_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6005 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action sample_soil_rover6_rover6store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_soil_sample waypoint24) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint24)))
)

(:action sample_soil_rover6_rover6store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6007 ) (at_soil_sample waypoint2) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint2)))
)

(:action sample_soil_rover6_rover6store_waypoint23
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_soil_sample waypoint23) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint23)))
)

(:action sample_rock_rover6_rover6store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_rock_sample waypoint4) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover6_rover6store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_rock_sample waypoint8) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint8)))
)

(:action sample_rock_rover6_rover6store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6011 ) (at_rock_sample waypoint14) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint14)))
)

(:action sample_rock_rover6_rover6store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_rock_sample waypoint15) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint15)))
)

(:action sample_rock_rover6_rover6store_waypoint19
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_rock_sample waypoint19) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint19)))
)

(:action sample_rock_rover6_rover6store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_rock_sample waypoint20) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint20)))
)

(:action sample_rock_rover6_rover6store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_rock_sample waypoint24) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint24)))
)

(:action sample_rock_rover6_rover6store_waypoint29
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6015 ) (at_rock_sample waypoint29) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint29)))
)

(:action sample_rock_rover6_rover6store_waypoint26
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6016 ) (at_rock_sample waypoint26) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint26)))
)

(:action communicate_soil_data_rover6_general_waypoint21_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6017 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover6_general_waypoint3_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6003 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover6_general_waypoint21_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6017 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover6_general_waypoint3_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6003 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover6_general_waypoint21_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6017 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover6_general_waypoint3_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6003 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover6_general_waypoint21_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6017 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover6_general_waypoint3_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6003 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover6_general_waypoint21_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6017 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover6_general_waypoint3_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6003 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover6_general_waypoint21_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6017 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover6_general_waypoint3_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6003 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover6_general_waypoint21_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6017 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_rock_data_rover6_general_waypoint10_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6021 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover6_general_waypoint3_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6005 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover6_general_waypoint10_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6021 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover6_general_waypoint3_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6005 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover6_general_waypoint10_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6021 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover6_general_waypoint3_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6005 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover6_general_waypoint10_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6021 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover6_general_waypoint3_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6005 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover6_general_waypoint10_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6021 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover6_general_waypoint3_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6005 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover6_general_waypoint10_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6021 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover6_general_waypoint3_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6005 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover6_general_waypoint10_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6021 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action sample_soil_rover6_rover6store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_soil_sample waypoint12) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover6_rover6store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6023 ) (at_soil_sample waypoint0) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover6_rover6store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6024 ) (at_soil_sample waypoint25) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint25)))
)

(:action sample_soil_rover6_rover6store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6025 ) (at_soil_sample waypoint1) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint1)))
)

(:action sample_soil_rover6_rover6store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6026 ) (at_soil_sample waypoint11) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint11)))
)

(:action sample_rock_rover6_rover6store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6027 ) (at_rock_sample waypoint6) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint6)))
)

(:action sample_rock_rover6_rover6store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6028 ) (at_rock_sample waypoint9) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint9)))
)

(:action sample_rock_rover6_rover6store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_rock_sample waypoint12) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover6_rover6store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6024 ) (at_rock_sample waypoint25) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint25)))
)

(:action sample_rock_rover6_rover6store_waypoint28
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_rock_sample waypoint28) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint28)))
)

(:action communicate_soil_data_rover6_general_waypoint24_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6030 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover6_general_waypoint2_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6031 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover6_general_waypoint23_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6032 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover6_general_waypoint24_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6030 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover6_general_waypoint2_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6031 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover6_general_waypoint23_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6032 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover6_general_waypoint24_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6030 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover6_general_waypoint2_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6031 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover6_general_waypoint23_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6032 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover6_general_waypoint24_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6030 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover6_general_waypoint2_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6031 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover6_general_waypoint23_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6032 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover6_general_waypoint24_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6030 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover6_general_waypoint2_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6031 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover6_general_waypoint23_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6032 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover6_general_waypoint24_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6030 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover6_general_waypoint2_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6031 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover6_general_waypoint23_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6032 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover6_general_waypoint24_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6030 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover6_general_waypoint2_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6031 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover6_general_waypoint23_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6032 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover6_general_waypoint3_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6003 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover6_general_waypoint21_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6017 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover6_general_waypoint24_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6030 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover6_general_waypoint2_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6031 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover6_general_waypoint23_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6032 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_rock_data_rover6_general_waypoint4_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6033 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover6_general_waypoint8_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6034 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover6_general_waypoint14_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6035 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover6_general_waypoint15_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6036 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover6_general_waypoint19_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6037 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover6_general_waypoint20_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6038 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover6_general_waypoint24_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6039 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover6_general_waypoint29_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6040 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover6_general_waypoint26_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6041 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover6_general_waypoint4_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6033 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover6_general_waypoint8_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6034 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover6_general_waypoint14_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6035 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover6_general_waypoint15_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6036 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover6_general_waypoint19_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6037 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover6_general_waypoint20_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6038 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover6_general_waypoint24_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6039 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover6_general_waypoint29_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6040 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover6_general_waypoint26_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6041 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover6_general_waypoint4_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6033 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover6_general_waypoint8_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6034 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover6_general_waypoint14_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6035 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover6_general_waypoint15_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6036 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover6_general_waypoint19_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6037 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover6_general_waypoint20_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6038 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover6_general_waypoint24_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6039 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover6_general_waypoint29_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6040 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover6_general_waypoint26_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6041 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover6_general_waypoint4_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6033 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover6_general_waypoint8_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6034 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover6_general_waypoint14_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6035 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover6_general_waypoint15_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6036 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover6_general_waypoint19_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6037 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover6_general_waypoint20_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6038 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover6_general_waypoint24_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6039 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover6_general_waypoint29_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6040 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover6_general_waypoint26_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6041 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover6_general_waypoint4_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6033 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover6_general_waypoint8_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6034 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover6_general_waypoint14_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6035 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover6_general_waypoint15_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6036 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover6_general_waypoint19_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6037 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover6_general_waypoint20_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6038 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover6_general_waypoint24_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6039 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover6_general_waypoint29_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6040 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover6_general_waypoint26_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6041 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover6_general_waypoint4_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6033 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover6_general_waypoint8_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6034 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover6_general_waypoint14_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6035 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover6_general_waypoint15_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6036 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover6_general_waypoint19_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6037 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover6_general_waypoint20_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6038 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover6_general_waypoint24_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6039 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover6_general_waypoint29_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6040 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover6_general_waypoint26_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6041 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover6_general_waypoint4_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6033 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover6_general_waypoint8_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6034 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover6_general_waypoint14_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6035 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover6_general_waypoint15_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6036 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover6_general_waypoint19_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6037 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover6_general_waypoint20_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6038 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover6_general_waypoint24_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6039 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover6_general_waypoint29_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6040 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover6_general_waypoint26_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6041 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover6_general_waypoint3_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6005 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover6_general_waypoint10_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6021 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover6_general_waypoint4_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6033 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover6_general_waypoint8_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6034 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover6_general_waypoint14_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6035 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover6_general_waypoint15_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6036 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover6_general_waypoint19_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6037 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover6_general_waypoint20_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6038 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover6_general_waypoint24_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6039 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover6_general_waypoint29_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6040 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover6_general_waypoint26_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6041 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_soil_data_rover6_general_waypoint12_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6042 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover6_general_waypoint0_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6043 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover6_general_waypoint25_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6044 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover6_general_waypoint1_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6045 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover6_general_waypoint11_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6046 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover6_general_waypoint12_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6042 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover6_general_waypoint0_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6043 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover6_general_waypoint25_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6044 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover6_general_waypoint1_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6045 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover6_general_waypoint11_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6046 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover6_general_waypoint12_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6042 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover6_general_waypoint0_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6043 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover6_general_waypoint25_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6044 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover6_general_waypoint1_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6045 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover6_general_waypoint11_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6046 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover6_general_waypoint12_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6042 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover6_general_waypoint0_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6043 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover6_general_waypoint25_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6044 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover6_general_waypoint1_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6045 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover6_general_waypoint11_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6046 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover6_general_waypoint12_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6042 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover6_general_waypoint0_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6043 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover6_general_waypoint25_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6044 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover6_general_waypoint1_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6045 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover6_general_waypoint11_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6046 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover6_general_waypoint12_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6042 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover6_general_waypoint0_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6043 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover6_general_waypoint25_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6044 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover6_general_waypoint1_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6045 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover6_general_waypoint11_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6046 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover6_general_waypoint12_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6042 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover6_general_waypoint0_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6043 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover6_general_waypoint25_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6044 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover6_general_waypoint1_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6045 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover6_general_waypoint11_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6046 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover6_general_waypoint12_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6042 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover6_general_waypoint0_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6043 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover6_general_waypoint25_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6044 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover6_general_waypoint1_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6045 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover6_general_waypoint11_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6046 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_rock_data_rover6_general_waypoint6_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6047 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover6_general_waypoint9_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6048 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover6_general_waypoint12_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6049 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover6_general_waypoint25_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6050 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover6_general_waypoint28_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_lander general waypoint27) (P_ARTIFICIAL6051 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover6_general_waypoint6_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6047 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover6_general_waypoint9_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6048 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover6_general_waypoint12_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6049 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover6_general_waypoint25_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6050 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover6_general_waypoint28_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint27) (P_ARTIFICIAL6051 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover6_general_waypoint6_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6047 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover6_general_waypoint9_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6048 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover6_general_waypoint12_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6049 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover6_general_waypoint25_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6050 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover6_general_waypoint28_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_lander general waypoint27) (P_ARTIFICIAL6051 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover6_general_waypoint6_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6047 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover6_general_waypoint9_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6048 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover6_general_waypoint12_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6049 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover6_general_waypoint25_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6050 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover6_general_waypoint28_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint27) (P_ARTIFICIAL6051 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover6_general_waypoint6_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6047 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover6_general_waypoint9_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6048 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover6_general_waypoint12_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6049 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover6_general_waypoint25_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6050 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover6_general_waypoint28_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint27) (P_ARTIFICIAL6051 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover6_general_waypoint6_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6047 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover6_general_waypoint9_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6048 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover6_general_waypoint12_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6049 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover6_general_waypoint25_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6050 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover6_general_waypoint28_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint27) (P_ARTIFICIAL6051 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover6_general_waypoint6_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6047 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover6_general_waypoint9_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6048 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover6_general_waypoint12_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6049 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover6_general_waypoint25_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6050 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover6_general_waypoint28_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint27) (P_ARTIFICIAL6051 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover6_general_waypoint6_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6047 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover6_general_waypoint9_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6048 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover6_general_waypoint12_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6049 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover6_general_waypoint25_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6050 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover6_general_waypoint28_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6029 ) (at_lander general waypoint27) (P_ARTIFICIAL6051 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL6004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action dummy-init-action-rotemagent7
:precondition 
(and (can-use-init-action rotemagent7))
:effect 
(and (not (can-use-init-action rotemagent7)) (used-init-action rotemagent7) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_rock_sample waypoint6) (at_rock_sample waypoint8) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_rock_sample waypoint14) (at_rock_sample waypoint15) (at_rock_sample waypoint19) (at_rock_sample waypoint20) (at_soil_sample waypoint21) (at_soil_sample waypoint23) (at_soil_sample waypoint24) (at_rock_sample waypoint24) (at_soil_sample waypoint25) (at_rock_sample waypoint25) (at_rock_sample waypoint26) (at_rock_sample waypoint28) (at_rock_sample waypoint29) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store) (empty rover8store) (empty rover9store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7) (used-init-action rotemagent8) (used-init-action rotemagent9))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (not (used-init-action rotemagent8)) (not (used-init-action rotemagent9)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover7_rover7store_waypoint29
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7000 ) (at_rock_sample waypoint29) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint29)))
)

(:action sample_soil_rover7_rover7store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7001 ) (at_soil_sample waypoint0) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint0)))
)

(:action sample_rock_rover7_rover7store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_rock_sample waypoint10) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint10)))
)

(:action sample_rock_rover7_rover7store_waypoint19
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7003 ) (at_rock_sample waypoint19) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint19)))
)

(:action sample_rock_rover7_rover7store_waypoint28
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_rock_sample waypoint28) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint28)))
)

(:action drop_rover7_rover7store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover7store))
:effect 
(and (not (full rover7store)) (empty rover7store))
)

(:action communicate_rock_data_rover7_general_waypoint29_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7006 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover7_general_waypoint29_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7006 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover7_general_waypoint29_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7006 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action sample_soil_rover7_rover7store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7009 ) (at_soil_sample waypoint1) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint1)))
)

(:action sample_soil_rover7_rover7store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7010 ) (at_soil_sample waypoint21) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint21)))
)

(:action sample_soil_rover7_rover7store_waypoint23
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7011 ) (at_soil_sample waypoint23) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint23)))
)

(:action sample_soil_rover7_rover7store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_soil_sample waypoint3) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint3)))
)

(:action sample_soil_rover7_rover7store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_soil_sample waypoint24) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint24)))
)

(:action sample_soil_rover7_rover7store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7014 ) (at_soil_sample waypoint25) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint25)))
)

(:action sample_rock_rover7_rover7store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_rock_sample waypoint8) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint8)))
)

(:action sample_rock_rover7_rover7store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7016 ) (at_rock_sample waypoint6) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint6)))
)

(:action sample_rock_rover7_rover7store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7017 ) (at_rock_sample waypoint14) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint14)))
)

(:action sample_rock_rover7_rover7store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7018 ) (at_rock_sample waypoint20) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint20)))
)

(:action sample_rock_rover7_rover7store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_rock_sample waypoint3) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint3)))
)

(:action sample_rock_rover7_rover7store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_rock_sample waypoint9) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint9)))
)

(:action sample_rock_rover7_rover7store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_rock_sample waypoint15) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint15)))
)

(:action sample_rock_rover7_rover7store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_rock_sample waypoint24) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint24)))
)

(:action sample_rock_rover7_rover7store_waypoint26
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_rock_sample waypoint26) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint26)))
)

(:action sample_rock_rover7_rover7store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7014 ) (at_rock_sample waypoint25) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint25)))
)

(:action communicate_soil_data_rover7_general_waypoint0_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7022 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover7_general_waypoint0_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7022 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover7_general_waypoint0_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7022 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover7_general_waypoint0_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7022 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover7_general_waypoint0_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7022 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover7_general_waypoint0_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7022 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover7_general_waypoint0_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7022 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover7_general_waypoint0_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7022 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_rock_data_rover7_general_waypoint29_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7006 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover7_general_waypoint10_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7024 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover7_general_waypoint19_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7025 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover7_general_waypoint28_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7026 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover7_general_waypoint10_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7024 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover7_general_waypoint19_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7025 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover7_general_waypoint28_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7026 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover7_general_waypoint29_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7006 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover7_general_waypoint10_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7024 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover7_general_waypoint19_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7025 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover7_general_waypoint28_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7026 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover7_general_waypoint29_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7006 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover7_general_waypoint10_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7024 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover7_general_waypoint19_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7025 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover7_general_waypoint28_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7026 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover7_general_waypoint29_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7006 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover7_general_waypoint10_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7024 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover7_general_waypoint19_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7025 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover7_general_waypoint28_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7026 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover7_general_waypoint10_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7024 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover7_general_waypoint19_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7025 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover7_general_waypoint28_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7026 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover7_general_waypoint29_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7006 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover7_general_waypoint10_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7024 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover7_general_waypoint19_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7025 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover7_general_waypoint28_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7026 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover7_general_waypoint10_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7024 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover7_general_waypoint19_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7025 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover7_general_waypoint28_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7026 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action sample_soil_rover7_rover7store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7027 ) (at_soil_sample waypoint12) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover7_rover7store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_soil_sample waypoint11) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint11)))
)

(:action sample_soil_rover7_rover7store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7029 ) (at_soil_sample waypoint2) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint2)))
)

(:action sample_rock_rover7_rover7store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7027 ) (at_rock_sample waypoint12) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover7_rover7store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7030 ) (at_rock_sample waypoint4) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint4)))
)

(:action communicate_soil_data_rover7_general_waypoint1_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7031 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover7_general_waypoint21_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7032 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover7_general_waypoint23_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7033 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover7_general_waypoint3_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7034 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover7_general_waypoint24_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7035 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover7_general_waypoint25_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7036 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover7_general_waypoint1_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7031 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover7_general_waypoint21_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7032 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover7_general_waypoint23_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7033 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover7_general_waypoint3_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7034 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover7_general_waypoint24_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7035 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover7_general_waypoint25_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7036 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover7_general_waypoint1_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7031 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover7_general_waypoint21_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7032 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover7_general_waypoint23_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7033 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover7_general_waypoint3_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7034 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover7_general_waypoint24_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7035 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover7_general_waypoint25_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7036 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover7_general_waypoint1_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7031 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover7_general_waypoint21_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7032 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover7_general_waypoint23_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7033 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover7_general_waypoint3_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7034 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover7_general_waypoint24_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7035 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover7_general_waypoint25_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7036 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover7_general_waypoint1_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7031 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover7_general_waypoint21_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7032 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover7_general_waypoint23_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7033 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover7_general_waypoint3_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7034 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover7_general_waypoint24_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7035 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover7_general_waypoint25_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7036 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover7_general_waypoint1_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7031 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover7_general_waypoint21_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7032 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover7_general_waypoint23_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7033 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover7_general_waypoint3_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7034 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover7_general_waypoint24_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7035 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover7_general_waypoint25_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7036 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover7_general_waypoint1_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7031 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover7_general_waypoint21_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7032 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover7_general_waypoint23_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7033 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover7_general_waypoint3_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7034 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover7_general_waypoint24_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7035 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover7_general_waypoint25_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7036 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover7_general_waypoint1_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7031 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover7_general_waypoint21_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7032 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover7_general_waypoint23_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7033 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover7_general_waypoint3_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7034 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover7_general_waypoint24_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7035 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover7_general_waypoint25_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7036 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_rock_data_rover7_general_waypoint8_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7037 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover7_general_waypoint6_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7038 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover7_general_waypoint14_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7039 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover7_general_waypoint20_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7040 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover7_general_waypoint3_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7041 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover7_general_waypoint9_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7042 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover7_general_waypoint15_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7043 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover7_general_waypoint24_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7044 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover7_general_waypoint26_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7045 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover7_general_waypoint25_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7046 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover7_general_waypoint8_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7037 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover7_general_waypoint6_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7038 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover7_general_waypoint14_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7039 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover7_general_waypoint20_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7040 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover7_general_waypoint3_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7041 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover7_general_waypoint9_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7042 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover7_general_waypoint15_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7043 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover7_general_waypoint24_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7044 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover7_general_waypoint26_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7045 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover7_general_waypoint25_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7046 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover7_general_waypoint8_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7037 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover7_general_waypoint6_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7038 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover7_general_waypoint14_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7039 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover7_general_waypoint20_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7040 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover7_general_waypoint3_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7041 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover7_general_waypoint9_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7042 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover7_general_waypoint15_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7043 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover7_general_waypoint24_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7044 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover7_general_waypoint26_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7045 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover7_general_waypoint25_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7046 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover7_general_waypoint8_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7037 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover7_general_waypoint6_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7038 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover7_general_waypoint14_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7039 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover7_general_waypoint20_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7040 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover7_general_waypoint3_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7041 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover7_general_waypoint9_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7042 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover7_general_waypoint15_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7043 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover7_general_waypoint24_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7044 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover7_general_waypoint26_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7045 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover7_general_waypoint25_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7046 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover7_general_waypoint8_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7037 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover7_general_waypoint6_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7038 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover7_general_waypoint14_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7039 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover7_general_waypoint20_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7040 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover7_general_waypoint3_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7041 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover7_general_waypoint9_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7042 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover7_general_waypoint15_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7043 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover7_general_waypoint24_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7044 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover7_general_waypoint26_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7045 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover7_general_waypoint25_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7046 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover7_general_waypoint8_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7037 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover7_general_waypoint6_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7038 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover7_general_waypoint14_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7039 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover7_general_waypoint20_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7040 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover7_general_waypoint3_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7041 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover7_general_waypoint9_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7042 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover7_general_waypoint15_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7043 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover7_general_waypoint24_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7044 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover7_general_waypoint26_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7045 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover7_general_waypoint25_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7046 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover7_general_waypoint8_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7037 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover7_general_waypoint6_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7038 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover7_general_waypoint14_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7039 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover7_general_waypoint20_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7040 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover7_general_waypoint3_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7041 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover7_general_waypoint9_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7042 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover7_general_waypoint15_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7043 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover7_general_waypoint24_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7044 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover7_general_waypoint26_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7045 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover7_general_waypoint25_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7046 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover7_general_waypoint8_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7037 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover7_general_waypoint6_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7038 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover7_general_waypoint14_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7039 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover7_general_waypoint20_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7040 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover7_general_waypoint3_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7041 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover7_general_waypoint9_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7042 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover7_general_waypoint15_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7043 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover7_general_waypoint24_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7044 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover7_general_waypoint26_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7045 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover7_general_waypoint25_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7046 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_image_data_rover7_general_objective0_colour_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7047 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover7_general_objective1_colour_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7048 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover7_general_objective2_colour_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7049 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover7_general_objective3_colour_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7050 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover7_general_objective4_colour_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7051 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover7_general_objective5_colour_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7052 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover7_general_objective0_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7053 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover7_general_objective1_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7054 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover7_general_objective2_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7055 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover7_general_objective3_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7056 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover7_general_objective4_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7057 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover7_general_objective5_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7058 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover7_general_objective0_colour_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7047 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover7_general_objective1_colour_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7048 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover7_general_objective2_colour_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7049 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover7_general_objective3_colour_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7050 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover7_general_objective4_colour_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7051 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover7_general_objective5_colour_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7052 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover7_general_objective0_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7053 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover7_general_objective1_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7054 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover7_general_objective2_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7055 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover7_general_objective3_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7056 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover7_general_objective4_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7057 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover7_general_objective5_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7058 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover7_general_objective0_colour_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7047 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover7_general_objective1_colour_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7048 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover7_general_objective2_colour_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7049 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover7_general_objective3_colour_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7050 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover7_general_objective4_colour_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7051 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover7_general_objective5_colour_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7052 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover7_general_objective0_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7053 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover7_general_objective1_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7054 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover7_general_objective2_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7055 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover7_general_objective3_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7056 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover7_general_objective4_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7057 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover7_general_objective5_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7058 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover7_general_objective0_colour_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7047 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover7_general_objective1_colour_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7048 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover7_general_objective2_colour_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7049 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover7_general_objective3_colour_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7050 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover7_general_objective4_colour_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7051 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover7_general_objective5_colour_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7052 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover7_general_objective0_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7053 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover7_general_objective1_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7054 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover7_general_objective2_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7055 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover7_general_objective3_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7056 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover7_general_objective4_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7057 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover7_general_objective5_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7058 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover7_general_objective0_colour_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7047 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover7_general_objective1_colour_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7048 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover7_general_objective2_colour_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7049 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover7_general_objective3_colour_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7050 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover7_general_objective4_colour_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7051 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover7_general_objective5_colour_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7052 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover7_general_objective0_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7053 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover7_general_objective1_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7054 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover7_general_objective2_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7055 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover7_general_objective3_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7056 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover7_general_objective4_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7057 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover7_general_objective5_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7058 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover7_general_objective0_colour_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7047 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover7_general_objective1_colour_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7048 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover7_general_objective2_colour_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7049 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover7_general_objective3_colour_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7050 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover7_general_objective4_colour_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7051 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover7_general_objective5_colour_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7052 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover7_general_objective0_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7053 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover7_general_objective1_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7054 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover7_general_objective2_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7055 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover7_general_objective3_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7056 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover7_general_objective4_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7057 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover7_general_objective5_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7058 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover7_general_objective0_colour_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7047 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover7_general_objective1_colour_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7048 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover7_general_objective2_colour_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7049 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover7_general_objective3_colour_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7050 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover7_general_objective4_colour_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7051 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover7_general_objective5_colour_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7052 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover7_general_objective0_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7053 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover7_general_objective1_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7054 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover7_general_objective2_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7055 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover7_general_objective3_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7056 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover7_general_objective4_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7057 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover7_general_objective5_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7058 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover7_general_objective0_colour_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7047 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover7_general_objective1_colour_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7048 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover7_general_objective2_colour_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7049 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover7_general_objective3_colour_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7050 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover7_general_objective4_colour_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7051 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover7_general_objective5_colour_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7052 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover7_general_objective0_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7053 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover7_general_objective1_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7054 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover7_general_objective2_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7055 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover7_general_objective3_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7056 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover7_general_objective4_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7057 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover7_general_objective5_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7058 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_soil_data_rover7_general_waypoint12_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7059 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover7_general_waypoint11_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7060 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover7_general_waypoint2_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7061 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover7_general_waypoint12_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7059 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover7_general_waypoint11_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7060 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover7_general_waypoint2_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7061 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover7_general_waypoint12_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7059 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover7_general_waypoint11_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7060 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover7_general_waypoint2_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7061 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover7_general_waypoint12_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7059 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover7_general_waypoint11_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7060 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover7_general_waypoint2_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7061 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover7_general_waypoint12_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7059 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover7_general_waypoint11_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7060 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover7_general_waypoint2_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7061 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover7_general_waypoint12_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7059 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover7_general_waypoint11_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7060 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover7_general_waypoint2_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7061 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover7_general_waypoint12_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7059 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover7_general_waypoint11_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7060 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover7_general_waypoint2_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7061 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover7_general_waypoint12_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7059 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover7_general_waypoint11_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7060 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover7_general_waypoint2_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7061 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_rock_data_rover7_general_waypoint12_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7062 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover7_general_waypoint4_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint27) (P_ARTIFICIAL7063 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover7_general_waypoint12_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7062 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover7_general_waypoint4_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint27) (P_ARTIFICIAL7063 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover7_general_waypoint12_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7062 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover7_general_waypoint4_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_lander general waypoint27) (P_ARTIFICIAL7063 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover7_general_waypoint12_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7062 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover7_general_waypoint4_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint27) (P_ARTIFICIAL7063 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover7_general_waypoint12_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7062 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover7_general_waypoint4_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_lander general waypoint27) (P_ARTIFICIAL7063 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover7_general_waypoint12_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7062 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover7_general_waypoint4_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_lander general waypoint27) (P_ARTIFICIAL7063 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover7_general_waypoint12_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7062 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover7_general_waypoint4_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint27) (P_ARTIFICIAL7063 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover7_general_waypoint12_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7062 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover7_general_waypoint4_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7004 ) (at_lander general waypoint27) (P_ARTIFICIAL7063 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL7007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action dummy-init-action-rotemagent8
:precondition 
(and (can-use-init-action rotemagent8))
:effect 
(and (not (can-use-init-action rotemagent8)) (used-init-action rotemagent8) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_rock_sample waypoint6) (at_rock_sample waypoint8) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_rock_sample waypoint14) (at_rock_sample waypoint15) (at_rock_sample waypoint19) (at_rock_sample waypoint20) (at_soil_sample waypoint21) (at_soil_sample waypoint23) (at_soil_sample waypoint24) (at_rock_sample waypoint24) (at_soil_sample waypoint25) (at_rock_sample waypoint25) (at_rock_sample waypoint26) (at_rock_sample waypoint28) (at_rock_sample waypoint29) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store) (empty rover8store) (empty rover9store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7) (used-init-action rotemagent8) (used-init-action rotemagent9))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (not (used-init-action rotemagent8)) (not (used-init-action rotemagent9)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover8_rover8store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_soil_sample waypoint3) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_soil_sample waypoint3)))
)

(:action sample_rock_rover8_rover8store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_rock_sample waypoint3) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_rock_sample waypoint3)))
)

(:action sample_soil_rover8_rover8store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8001 ) (at_soil_sample waypoint21) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_soil_sample waypoint21)))
)

(:action sample_rock_rover8_rover8store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8002 ) (at_rock_sample waypoint10) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_rock_sample waypoint10)))
)

(:action sample_rock_rover8_rover8store_waypoint26
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8003 ) (at_rock_sample waypoint26) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_rock_sample waypoint26)))
)

(:action drop_rover8_rover8store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover8store))
:effect 
(and (not (full rover8store)) (empty rover8store))
)

(:action communicate_soil_data_rover8_general_waypoint3_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8004 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_rock_data_rover8_general_waypoint3_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8006 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action sample_soil_rover8_rover8store_waypoint23
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8007 ) (at_soil_sample waypoint23) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_soil_sample waypoint23)))
)

(:action sample_soil_rover8_rover8store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_soil_sample waypoint24) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_soil_sample waypoint24)))
)

(:action sample_soil_rover8_rover8store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8009 ) (at_soil_sample waypoint2) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_soil_sample waypoint2)))
)

(:action sample_rock_rover8_rover8store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8010 ) (at_rock_sample waypoint4) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover8_rover8store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_rock_sample waypoint8) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_rock_sample waypoint8)))
)

(:action sample_rock_rover8_rover8store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8012 ) (at_rock_sample waypoint9) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_rock_sample waypoint9)))
)

(:action sample_rock_rover8_rover8store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8013 ) (at_rock_sample waypoint14) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_rock_sample waypoint14)))
)

(:action sample_rock_rover8_rover8store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_rock_sample waypoint15) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_rock_sample waypoint15)))
)

(:action sample_rock_rover8_rover8store_waypoint19
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8015 ) (at_rock_sample waypoint19) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_rock_sample waypoint19)))
)

(:action sample_rock_rover8_rover8store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_rock_sample waypoint24) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_rock_sample waypoint24)))
)

(:action sample_rock_rover8_rover8store_waypoint29
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8016 ) (at_rock_sample waypoint29) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_rock_sample waypoint29)))
)

(:action sample_rock_rover8_rover8store_waypoint28
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_rock_sample waypoint28) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_rock_sample waypoint28)))
)

(:action communicate_soil_data_rover8_general_waypoint21_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8018 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover8_general_waypoint3_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8004 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover8_general_waypoint21_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8018 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover8_general_waypoint3_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8004 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover8_general_waypoint21_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8018 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover8_general_waypoint3_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8004 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover8_general_waypoint21_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8018 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover8_general_waypoint3_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8004 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover8_general_waypoint21_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8018 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover8_general_waypoint3_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8004 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover8_general_waypoint21_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8018 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover8_general_waypoint3_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8004 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover8_general_waypoint21_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8018 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover8_general_waypoint3_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8004 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover8_general_waypoint21_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8018 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_rock_data_rover8_general_waypoint10_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8022 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover8_general_waypoint26_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8023 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover8_general_waypoint3_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8006 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover8_general_waypoint10_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8022 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover8_general_waypoint26_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8023 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover8_general_waypoint3_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8006 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover8_general_waypoint10_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8022 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover8_general_waypoint26_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8023 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover8_general_waypoint3_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8006 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover8_general_waypoint10_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8022 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover8_general_waypoint26_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8023 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover8_general_waypoint3_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8006 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover8_general_waypoint10_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8022 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover8_general_waypoint26_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8023 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover8_general_waypoint3_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8006 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover8_general_waypoint10_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8022 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover8_general_waypoint26_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8023 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover8_general_waypoint3_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8006 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover8_general_waypoint10_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8022 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover8_general_waypoint26_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8023 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action communicate_rock_data_rover8_general_waypoint3_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8006 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover8_general_waypoint10_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8022 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover8_general_waypoint26_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8023 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint26))
)

(:action sample_soil_rover8_rover8store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8024 ) (at_soil_sample waypoint1) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_soil_sample waypoint1)))
)

(:action sample_soil_rover8_rover8store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8025 ) (at_soil_sample waypoint0) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover8_rover8store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8026 ) (at_soil_sample waypoint12) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover8_rover8store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8027 ) (at_soil_sample waypoint25) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_soil_sample waypoint25)))
)

(:action sample_soil_rover8_rover8store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8028 ) (at_soil_sample waypoint11) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_soil_sample waypoint11)))
)

(:action sample_rock_rover8_rover8store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8029 ) (at_rock_sample waypoint6) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_rock_sample waypoint6)))
)

(:action sample_rock_rover8_rover8store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8030 ) (at_rock_sample waypoint20) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_rock_sample waypoint20)))
)

(:action sample_rock_rover8_rover8store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8026 ) (at_rock_sample waypoint12) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover8_rover8store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8027 ) (at_rock_sample waypoint25) (empty rover8store))
:effect 
(and (not (empty rover8store)) (full rover8store) (not (at_rock_sample waypoint25)))
)

(:action communicate_soil_data_rover8_general_waypoint23_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8031 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover8_general_waypoint24_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8032 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover8_general_waypoint2_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8033 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover8_general_waypoint23_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8031 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover8_general_waypoint24_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8032 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover8_general_waypoint2_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8033 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover8_general_waypoint23_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8031 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover8_general_waypoint24_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8032 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover8_general_waypoint2_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8033 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover8_general_waypoint23_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8031 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover8_general_waypoint24_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8032 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover8_general_waypoint2_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8033 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover8_general_waypoint23_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8031 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover8_general_waypoint24_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8032 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover8_general_waypoint2_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8033 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover8_general_waypoint23_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8031 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover8_general_waypoint24_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8032 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover8_general_waypoint2_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8033 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover8_general_waypoint23_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8031 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover8_general_waypoint24_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8032 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover8_general_waypoint2_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8033 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover8_general_waypoint23_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8031 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover8_general_waypoint24_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8032 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover8_general_waypoint2_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8033 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_rock_data_rover8_general_waypoint4_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8034 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover8_general_waypoint8_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8035 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover8_general_waypoint9_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8036 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover8_general_waypoint14_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8037 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover8_general_waypoint15_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8038 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover8_general_waypoint19_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8039 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover8_general_waypoint24_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8040 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover8_general_waypoint29_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8041 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover8_general_waypoint28_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8042 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover8_general_waypoint4_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8034 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover8_general_waypoint8_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8035 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover8_general_waypoint9_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8036 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover8_general_waypoint14_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8037 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover8_general_waypoint15_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8038 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover8_general_waypoint19_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8039 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover8_general_waypoint24_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8040 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover8_general_waypoint29_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8041 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover8_general_waypoint28_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8042 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover8_general_waypoint4_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8034 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover8_general_waypoint8_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8035 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover8_general_waypoint9_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8036 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover8_general_waypoint14_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8037 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover8_general_waypoint15_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8038 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover8_general_waypoint19_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8039 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover8_general_waypoint24_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8040 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover8_general_waypoint29_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8041 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover8_general_waypoint28_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8042 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover8_general_waypoint4_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8034 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover8_general_waypoint8_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8035 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover8_general_waypoint9_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8036 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover8_general_waypoint14_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8037 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover8_general_waypoint15_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8038 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover8_general_waypoint19_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8039 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover8_general_waypoint24_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8040 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover8_general_waypoint29_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8041 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover8_general_waypoint28_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8042 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover8_general_waypoint4_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8034 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover8_general_waypoint8_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8035 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover8_general_waypoint9_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8036 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover8_general_waypoint14_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8037 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover8_general_waypoint15_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8038 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover8_general_waypoint19_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8039 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover8_general_waypoint24_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8040 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover8_general_waypoint29_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8041 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover8_general_waypoint28_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8042 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover8_general_waypoint4_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8034 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover8_general_waypoint8_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8035 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover8_general_waypoint9_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8036 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover8_general_waypoint14_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8037 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover8_general_waypoint15_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8038 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover8_general_waypoint19_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8039 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover8_general_waypoint24_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8040 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover8_general_waypoint29_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8041 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover8_general_waypoint28_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8042 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover8_general_waypoint4_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8034 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover8_general_waypoint8_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8035 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover8_general_waypoint9_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8036 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover8_general_waypoint14_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8037 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover8_general_waypoint15_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8038 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover8_general_waypoint19_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8039 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover8_general_waypoint24_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8040 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover8_general_waypoint29_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8041 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover8_general_waypoint28_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8042 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover8_general_waypoint4_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8034 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover8_general_waypoint8_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8035 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover8_general_waypoint9_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8036 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover8_general_waypoint14_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8037 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover8_general_waypoint15_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8038 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover8_general_waypoint19_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8039 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover8_general_waypoint24_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8040 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover8_general_waypoint29_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8041 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint29))
)

(:action communicate_rock_data_rover8_general_waypoint28_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8042 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_soil_data_rover8_general_waypoint1_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8043 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover8_general_waypoint0_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8044 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover8_general_waypoint12_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8045 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover8_general_waypoint25_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8046 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover8_general_waypoint11_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8047 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover8_general_waypoint1_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8043 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover8_general_waypoint0_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8044 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover8_general_waypoint12_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8045 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover8_general_waypoint25_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8046 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover8_general_waypoint11_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8047 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover8_general_waypoint1_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8043 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover8_general_waypoint0_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8044 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover8_general_waypoint12_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8045 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover8_general_waypoint25_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8046 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover8_general_waypoint11_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8047 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover8_general_waypoint1_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8043 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover8_general_waypoint0_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8044 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover8_general_waypoint12_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8045 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover8_general_waypoint25_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8046 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover8_general_waypoint11_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8047 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover8_general_waypoint1_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8043 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover8_general_waypoint0_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8044 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover8_general_waypoint12_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8045 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover8_general_waypoint25_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8046 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover8_general_waypoint11_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8047 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover8_general_waypoint1_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8043 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover8_general_waypoint0_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8044 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover8_general_waypoint12_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8045 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover8_general_waypoint25_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8046 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover8_general_waypoint11_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8047 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover8_general_waypoint1_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8043 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover8_general_waypoint0_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8044 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover8_general_waypoint12_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8045 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover8_general_waypoint25_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8046 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover8_general_waypoint11_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8047 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover8_general_waypoint1_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8043 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover8_general_waypoint0_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8044 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover8_general_waypoint12_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8045 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover8_general_waypoint25_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8046 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover8_general_waypoint11_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8047 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_rock_data_rover8_general_waypoint6_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8048 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover8_general_waypoint20_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8049 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover8_general_waypoint12_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8050 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover8_general_waypoint25_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8000 ) (at_lander general waypoint27) (P_ARTIFICIAL8051 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover8_general_waypoint6_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8048 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover8_general_waypoint20_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8049 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover8_general_waypoint12_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8050 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover8_general_waypoint25_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8019 ) (at_lander general waypoint27) (P_ARTIFICIAL8051 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover8_general_waypoint6_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8048 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover8_general_waypoint20_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8049 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover8_general_waypoint12_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8050 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover8_general_waypoint25_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8011 ) (at_lander general waypoint27) (P_ARTIFICIAL8051 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover8_general_waypoint6_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8048 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover8_general_waypoint20_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8049 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover8_general_waypoint12_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8050 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover8_general_waypoint25_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8014 ) (at_lander general waypoint27) (P_ARTIFICIAL8051 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover8_general_waypoint6_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8048 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover8_general_waypoint20_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8049 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover8_general_waypoint12_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8050 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover8_general_waypoint25_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8020 ) (at_lander general waypoint27) (P_ARTIFICIAL8051 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover8_general_waypoint6_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8048 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover8_general_waypoint20_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8049 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover8_general_waypoint12_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8050 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover8_general_waypoint25_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8021 ) (at_lander general waypoint27) (P_ARTIFICIAL8051 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover8_general_waypoint6_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8048 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover8_general_waypoint20_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8049 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover8_general_waypoint12_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8050 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover8_general_waypoint25_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8008 ) (at_lander general waypoint27) (P_ARTIFICIAL8051 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover8_general_waypoint6_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8048 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover8_general_waypoint20_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8049 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover8_general_waypoint12_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8050 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover8_general_waypoint25_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8017 ) (at_lander general waypoint27) (P_ARTIFICIAL8051 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL8005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action dummy-init-action-rotemagent9
:precondition 
(and (can-use-init-action rotemagent9))
:effect 
(and (not (can-use-init-action rotemagent9)) (used-init-action rotemagent9) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_rock_sample waypoint6) (at_rock_sample waypoint8) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_rock_sample waypoint14) (at_rock_sample waypoint15) (at_rock_sample waypoint19) (at_rock_sample waypoint20) (at_soil_sample waypoint21) (at_soil_sample waypoint23) (at_soil_sample waypoint24) (at_rock_sample waypoint24) (at_soil_sample waypoint25) (at_rock_sample waypoint25) (at_rock_sample waypoint26) (at_rock_sample waypoint28) (at_rock_sample waypoint29) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store) (empty rover8store) (empty rover9store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7) (used-init-action rotemagent8) (used-init-action rotemagent9))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (not (used-init-action rotemagent8)) (not (used-init-action rotemagent9)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover9_rover9store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9000 ) (at_soil_sample waypoint2) (empty rover9store))
:effect 
(and (not (empty rover9store)) (full rover9store) (not (at_soil_sample waypoint2)))
)

(:action sample_soil_rover9_rover9store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9001 ) (at_soil_sample waypoint12) (empty rover9store))
:effect 
(and (not (empty rover9store)) (full rover9store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover9_rover9store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_soil_sample waypoint24) (empty rover9store))
:effect 
(and (not (empty rover9store)) (full rover9store) (not (at_soil_sample waypoint24)))
)

(:action sample_soil_rover9_rover9store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9003 ) (at_soil_sample waypoint21) (empty rover9store))
:effect 
(and (not (empty rover9store)) (full rover9store) (not (at_soil_sample waypoint21)))
)

(:action sample_soil_rover9_rover9store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9004 ) (at_soil_sample waypoint25) (empty rover9store))
:effect 
(and (not (empty rover9store)) (full rover9store) (not (at_soil_sample waypoint25)))
)

(:action sample_soil_rover9_rover9store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9005 ) (at_soil_sample waypoint1) (empty rover9store))
:effect 
(and (not (empty rover9store)) (full rover9store) (not (at_soil_sample waypoint1)))
)

(:action drop_rover9_rover9store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover9store))
:effect 
(and (not (full rover9store)) (empty rover9store))
)

(:action communicate_soil_data_rover9_general_waypoint2_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9007 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover9_general_waypoint12_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9009 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover9_general_waypoint24_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9010 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover9_general_waypoint2_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9007 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover9_general_waypoint12_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9009 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover9_general_waypoint24_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9010 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover9_general_waypoint2_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9007 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover9_general_waypoint12_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9009 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover9_general_waypoint24_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9010 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover9_general_waypoint2_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9007 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover9_general_waypoint12_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9009 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover9_general_waypoint24_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9010 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover9_general_waypoint2_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9007 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover9_general_waypoint12_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9009 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover9_general_waypoint24_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9010 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action sample_soil_rover9_rover9store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9014 ) (at_soil_sample waypoint0) (empty rover9store))
:effect 
(and (not (empty rover9store)) (full rover9store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover9_rover9store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9015 ) (at_soil_sample waypoint11) (empty rover9store))
:effect 
(and (not (empty rover9store)) (full rover9store) (not (at_soil_sample waypoint11)))
)

(:action sample_soil_rover9_rover9store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_soil_sample waypoint3) (empty rover9store))
:effect 
(and (not (empty rover9store)) (full rover9store) (not (at_soil_sample waypoint3)))
)

(:action sample_soil_rover9_rover9store_waypoint23
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9017 ) (at_soil_sample waypoint23) (empty rover9store))
:effect 
(and (not (empty rover9store)) (full rover9store) (not (at_soil_sample waypoint23)))
)

(:action communicate_soil_data_rover9_general_waypoint2_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9007 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover9_general_waypoint12_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9009 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover9_general_waypoint24_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9010 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover9_general_waypoint21_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9018 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover9_general_waypoint25_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9019 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover9_general_waypoint1_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9020 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover9_general_waypoint2_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9007 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover9_general_waypoint12_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9009 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover9_general_waypoint24_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9010 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover9_general_waypoint21_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9018 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover9_general_waypoint25_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9019 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover9_general_waypoint1_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9020 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover9_general_waypoint21_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9018 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover9_general_waypoint25_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9019 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover9_general_waypoint1_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9020 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover9_general_waypoint21_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9018 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover9_general_waypoint25_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9019 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover9_general_waypoint1_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9020 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover9_general_waypoint2_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9007 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover9_general_waypoint12_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9009 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover9_general_waypoint24_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9010 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover9_general_waypoint21_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9018 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover9_general_waypoint25_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9019 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover9_general_waypoint1_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9020 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover9_general_waypoint21_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9018 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover9_general_waypoint25_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9019 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover9_general_waypoint1_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9020 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover9_general_waypoint21_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9018 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover9_general_waypoint25_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9019 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover9_general_waypoint1_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9020 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover9_general_waypoint21_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9018 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover9_general_waypoint25_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9019 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover9_general_waypoint1_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9020 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_image_data_rover9_general_objective0_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9023 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover9_general_objective1_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9024 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover9_general_objective2_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9025 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover9_general_objective3_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9026 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover9_general_objective4_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9027 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover9_general_objective5_high_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9028 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover9_general_objective0_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9029 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover9_general_objective1_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9030 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover9_general_objective2_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9031 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover9_general_objective3_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9032 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover9_general_objective4_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9033 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover9_general_objective5_low_res_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9034 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover9_general_objective0_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9023 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover9_general_objective1_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9024 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover9_general_objective2_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9025 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover9_general_objective3_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9026 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover9_general_objective4_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9027 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover9_general_objective5_high_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9028 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover9_general_objective0_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9029 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover9_general_objective1_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9030 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover9_general_objective2_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9031 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover9_general_objective3_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9032 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover9_general_objective4_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9033 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover9_general_objective5_low_res_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9034 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover9_general_objective0_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9023 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover9_general_objective1_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9024 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover9_general_objective2_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9025 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover9_general_objective3_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9026 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover9_general_objective4_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9027 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover9_general_objective5_high_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9028 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover9_general_objective0_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9029 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover9_general_objective1_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9030 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover9_general_objective2_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9031 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover9_general_objective3_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9032 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover9_general_objective4_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9033 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover9_general_objective5_low_res_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9034 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover9_general_objective0_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9023 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover9_general_objective1_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9024 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover9_general_objective2_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9025 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover9_general_objective3_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9026 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover9_general_objective4_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9027 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover9_general_objective5_high_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9028 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover9_general_objective0_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9029 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover9_general_objective1_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9030 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover9_general_objective2_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9031 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover9_general_objective3_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9032 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover9_general_objective4_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9033 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover9_general_objective5_low_res_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9034 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover9_general_objective0_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9023 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover9_general_objective1_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9024 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover9_general_objective2_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9025 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover9_general_objective3_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9026 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover9_general_objective4_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9027 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover9_general_objective5_high_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9028 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover9_general_objective0_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9029 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover9_general_objective1_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9030 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover9_general_objective2_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9031 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover9_general_objective3_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9032 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover9_general_objective4_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9033 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover9_general_objective5_low_res_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9034 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover9_general_objective0_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9023 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover9_general_objective1_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9024 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover9_general_objective2_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9025 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover9_general_objective3_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9026 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover9_general_objective4_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9027 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover9_general_objective5_high_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9028 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover9_general_objective0_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9029 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover9_general_objective1_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9030 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover9_general_objective2_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9031 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover9_general_objective3_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9032 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover9_general_objective4_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9033 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover9_general_objective5_low_res_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9034 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover9_general_objective0_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9023 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover9_general_objective1_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9024 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover9_general_objective2_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9025 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover9_general_objective3_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9026 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover9_general_objective4_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9027 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover9_general_objective5_high_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9028 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover9_general_objective0_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9029 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover9_general_objective1_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9030 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover9_general_objective2_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9031 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover9_general_objective3_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9032 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover9_general_objective4_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9033 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover9_general_objective5_low_res_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9034 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover9_general_objective0_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9023 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover9_general_objective1_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9024 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover9_general_objective2_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9025 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover9_general_objective3_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9026 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover9_general_objective4_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9027 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover9_general_objective5_high_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9028 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover9_general_objective0_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9029 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover9_general_objective1_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9030 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover9_general_objective2_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9031 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover9_general_objective3_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9032 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover9_general_objective4_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9033 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover9_general_objective5_low_res_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9034 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_soil_data_rover9_general_waypoint0_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9035 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover9_general_waypoint11_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9036 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover9_general_waypoint3_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9037 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover9_general_waypoint23_waypoint3_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9016 ) (at_lander general waypoint27) (P_ARTIFICIAL9038 ) (visible waypoint3 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover9_general_waypoint0_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9035 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover9_general_waypoint11_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9036 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover9_general_waypoint3_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9037 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover9_general_waypoint23_waypoint7_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9021 ) (at_lander general waypoint27) (P_ARTIFICIAL9038 ) (visible waypoint7 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover9_general_waypoint0_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9035 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover9_general_waypoint11_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9036 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover9_general_waypoint3_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9037 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover9_general_waypoint23_waypoint8_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9006 ) (at_lander general waypoint27) (P_ARTIFICIAL9038 ) (visible waypoint8 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover9_general_waypoint0_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9035 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover9_general_waypoint11_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9036 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover9_general_waypoint3_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9037 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover9_general_waypoint23_waypoint15_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9011 ) (at_lander general waypoint27) (P_ARTIFICIAL9038 ) (visible waypoint15 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover9_general_waypoint0_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9035 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover9_general_waypoint11_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9036 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover9_general_waypoint3_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9037 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover9_general_waypoint23_waypoint18_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9022 ) (at_lander general waypoint27) (P_ARTIFICIAL9038 ) (visible waypoint18 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover9_general_waypoint0_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9035 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover9_general_waypoint11_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9036 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover9_general_waypoint3_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9037 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover9_general_waypoint23_waypoint22_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9012 ) (at_lander general waypoint27) (P_ARTIFICIAL9038 ) (visible waypoint22 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover9_general_waypoint0_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9035 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover9_general_waypoint11_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9036 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover9_general_waypoint3_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9037 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover9_general_waypoint23_waypoint24_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9002 ) (at_lander general waypoint27) (P_ARTIFICIAL9038 ) (visible waypoint24 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover9_general_waypoint0_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9035 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover9_general_waypoint11_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9036 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover9_general_waypoint3_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9037 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover9_general_waypoint23_waypoint28_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9013 ) (at_lander general waypoint27) (P_ARTIFICIAL9038 ) (visible waypoint28 waypoint27) (P_ARTIFICIAL9008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

)
