(define (domain JoinedDomain)
(:requirements :strips :typing :equality)
(:types object
rotemagent - object
rotemplaceholder - object
location - object
vehicle - object
package - object
city - object
airport - location
truck - vehicle
airplane - vehicle
rotemDependency - object
opDepRotemAgent - object
rotemNumber - object)
(:constants
 rotemagent0 - rotemagent
 rotemagent1 - rotemagent
 rotemagent2 - rotemagent
 rotemplaceholder - rotemplaceholder
 obj21 - package
 obj22 - package
 obj23 - package
 apt2 - airport
 apt1 - airport
 obj11 - package
 obj13 - package
 obj12 - package
 apn1 - airplane
 pos1 - location
 tru1 - truck
 cit1 - city
 cit2 - city
 tru2 - truck
 pos2 - location
 rotemDependency0 - rotemDependency
 rotemDependency1 - rotemDependency
 rotemDependency2 - rotemDependency
 rotemDependency3 - rotemDependency
 rotemDependency4 - rotemDependency
 rotemDependency5 - rotemDependency
 rotemDependency6 - rotemDependency
 rotemDependency7 - rotemDependency
 rotemDependency8 - rotemDependency
 rotemDependency9 - rotemDependency
 rotemDependency10 - rotemDependency
 rotemDependency11 - rotemDependency
 rotemDependency12 - rotemDependency
 rotemDependency13 - rotemDependency
 rotemDependency14 - rotemDependency
 rotemDependency15 - rotemDependency
 rotemDependency16 - rotemDependency
 rotemDependency17 - rotemDependency
 rotemDependency18 - rotemDependency
 rotemDependency19 - rotemDependency
 rotemDependency20 - rotemDependency
 rotemDependency21 - rotemDependency
 rotemDependency22 - rotemDependency
 rotemDependency23 - rotemDependency
 rotemDependency24 - rotemDependency
 rotemDependency25 - rotemDependency
 rotemDependency26 - rotemDependency
 rotemDependency27 - rotemDependency
 rotemDependency28 - rotemDependency
 rotemDependency29 - rotemDependency
 rotemDependency30 - rotemDependency
 rotemDependency31 - rotemDependency
 rotemDependency32 - rotemDependency
 rotemDependency33 - rotemDependency
 rotemDependency34 - rotemDependency
 rotemDependency35 - rotemDependency
 rotemDependency36 - rotemDependency
 rotemDependency37 - rotemDependency
 rotemDependency38 - rotemDependency
 rotemDependency39 - rotemDependency
 rotemDependency40 - rotemDependency
 rotemDependency41 - rotemDependency
 rotemDependency42 - rotemDependency
 rotemDependency43 - rotemDependency
 rotemDependency44 - rotemDependency
 rotemDependency45 - rotemDependency
 rotemDependency46 - rotemDependency
 rotemDependency47 - rotemDependency
 rotemDependency48 - rotemDependency
 rotemDependency49 - rotemDependency
 rotemDependency50 - rotemDependency
 rotemDependency51 - rotemDependency
 rotemDependency52 - rotemDependency
 rotemDependency53 - rotemDependency
 opDepRotemAgent0 - opDepRotemAgent
 opDepRotemAgent1 - opDepRotemAgent
 opDepRotemAgent2 - opDepRotemAgent
 rotemNumber0 - rotemNumber
)

(:predicates
(can-use-init-action ?rotemagent - rotemagent)
(used-init-action ?rotemagent - rotemagent)
(regular-actions-stage ?rotemplaceholder - rotemplaceholder)
(at ?obj - object ?loc - location)
(in ?obj1 - package ?veh - vehicle)
(in-city ?agent - truck ?loc - location ?city - city)
(revealed ?rotemDependency - rotemDependency)
(belongs-to ?rotemDependency - rotemDependency ?opDepRotemAgent - opDepRotemAgent)
(rotemNext ?rotemNumber1 - rotemNumber ?rotemNumber2 - rotemNumber)
(revealed-number-of-dependencies ?opDepRotemAgent - opDepRotemAgent ?rotemNumber - rotemNumber)
(used-dependency ?rotemDependency - rotemDependency)
)

(:action dummy-init-action-rotemagent0
:precondition 
(and (can-use-init-action rotemagent0))
:effect 
(and (not (can-use-init-action rotemagent0)) (used-init-action rotemagent0) (at apn1 apt2))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (regular-actions-stage rotemplaceholder))
)

(:action load-airplane_apn1_obj21_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at obj21 apt2) (at apn1 apt2))
:effect 
(and (not (at obj21 apt2)) (in obj21 apn1) (used-dependency rotemDependency0))
)

(:action load-airplane_apn1_obj22_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at obj22 apt2) (at apn1 apt2))
:effect 
(and (not (at obj22 apt2)) (in obj22 apn1) (used-dependency rotemDependency1))
)

(:action load-airplane_apn1_obj23_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at obj23 apt2) (at apn1 apt2))
:effect 
(and (not (at obj23 apt2)) (in obj23 apn1) (used-dependency rotemDependency2))
)

(:action load-airplane_apn1_obj11_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at obj11 apt1) (at apn1 apt1))
:effect 
(and (not (at obj11 apt1)) (in obj11 apn1) (used-dependency rotemDependency3))
)

(:action load-airplane_apn1_obj12_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at obj12 apt1) (at apn1 apt1))
:effect 
(and (not (at obj12 apt1)) (in obj12 apn1) (used-dependency rotemDependency4))
)

(:action load-airplane_apn1_obj13_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at obj13 apt1) (at apn1 apt1))
:effect 
(and (not (at obj13 apt1)) (in obj13 apn1) (used-dependency rotemDependency5))
)

(:action unload-airplane_apn1_obj21_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (in obj21 apn1) 
	(or 
		(and (used-dependency rotemDependency0) (revealed rotemDependency0))
		(and (used-dependency rotemDependency12) (revealed rotemDependency12)))(at apn1 apt2))
:effect 
(and (not (used-dependency rotemDependency0)) (not (used-dependency rotemDependency12)) (not (in obj21 apn1)) (at obj21 apt2) (used-dependency rotemDependency6))
)

(:action unload-airplane_apn1_obj21_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (in obj21 apn1) 
	(or 
		(and (used-dependency rotemDependency0) (revealed rotemDependency0))
		(and (used-dependency rotemDependency12) (revealed rotemDependency12)))(at apn1 apt1))
:effect 
(and (not (used-dependency rotemDependency0)) (not (used-dependency rotemDependency12)) (not (in obj21 apn1)) (at obj21 apt1) (used-dependency rotemDependency7))
)

(:action unload-airplane_apn1_obj22_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (in obj22 apn1) 
	(or 
		(and (used-dependency rotemDependency1) (revealed rotemDependency1))
		(and (used-dependency rotemDependency13) (revealed rotemDependency13)))(at apn1 apt2))
:effect 
(and (not (used-dependency rotemDependency1)) (not (used-dependency rotemDependency13)) (not (in obj22 apn1)) (at obj22 apt2) (used-dependency rotemDependency8))
)

(:action unload-airplane_apn1_obj22_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (in obj22 apn1) 
	(or 
		(and (used-dependency rotemDependency1) (revealed rotemDependency1))
		(and (used-dependency rotemDependency13) (revealed rotemDependency13)))(at apn1 apt1))
:effect 
(and (not (used-dependency rotemDependency1)) (not (used-dependency rotemDependency13)) (not (in obj22 apn1)) (at obj22 apt1) (used-dependency rotemDependency9))
)

(:action unload-airplane_apn1_obj23_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (in obj23 apn1) 
	(or 
		(and (used-dependency rotemDependency2) (revealed rotemDependency2))
		(and (used-dependency rotemDependency14) (revealed rotemDependency14)))(at apn1 apt2))
:effect 
(and (not (used-dependency rotemDependency2)) (not (used-dependency rotemDependency14)) (not (in obj23 apn1)) (at obj23 apt2) (used-dependency rotemDependency10))
)

(:action unload-airplane_apn1_obj23_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (in obj23 apn1) 
	(or 
		(and (used-dependency rotemDependency2) (revealed rotemDependency2))
		(and (used-dependency rotemDependency14) (revealed rotemDependency14)))(at apn1 apt1))
:effect 
(and (not (used-dependency rotemDependency2)) (not (used-dependency rotemDependency14)) (not (in obj23 apn1)) (at obj23 apt1) (used-dependency rotemDependency11))
)

(:action load-airplane_apn1_obj21_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at obj21 apt1) (at apn1 apt1))
:effect 
(and (not (at obj21 apt1)) (in obj21 apn1) (used-dependency rotemDependency12))
)

(:action load-airplane_apn1_obj22_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at obj22 apt1) (at apn1 apt1))
:effect 
(and (not (at obj22 apt1)) (in obj22 apn1) (used-dependency rotemDependency13))
)

(:action load-airplane_apn1_obj23_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at obj23 apt1) (at apn1 apt1))
:effect 
(and (not (at obj23 apt1)) (in obj23 apn1) (used-dependency rotemDependency14))
)

(:action unload-airplane_apn1_obj11_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (in obj11 apn1) 
	(or 
		(and (used-dependency rotemDependency3) (revealed rotemDependency3))
		(and (used-dependency rotemDependency21) (revealed rotemDependency21)))(at apn1 apt2))
:effect 
(and (not (used-dependency rotemDependency3)) (not (used-dependency rotemDependency21)) (not (in obj11 apn1)) (at obj11 apt2) (used-dependency rotemDependency15))
)

(:action unload-airplane_apn1_obj11_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (in obj11 apn1) 
	(or 
		(and (used-dependency rotemDependency3) (revealed rotemDependency3))
		(and (used-dependency rotemDependency21) (revealed rotemDependency21)))(at apn1 apt1))
:effect 
(and (not (used-dependency rotemDependency3)) (not (used-dependency rotemDependency21)) (not (in obj11 apn1)) (at obj11 apt1) (used-dependency rotemDependency16))
)

(:action unload-airplane_apn1_obj12_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (in obj12 apn1) 
	(or 
		(and (used-dependency rotemDependency4) (revealed rotemDependency4))
		(and (used-dependency rotemDependency22) (revealed rotemDependency22)))(at apn1 apt2))
:effect 
(and (not (used-dependency rotemDependency4)) (not (used-dependency rotemDependency22)) (not (in obj12 apn1)) (at obj12 apt2) (used-dependency rotemDependency17))
)

(:action unload-airplane_apn1_obj12_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (in obj12 apn1) 
	(or 
		(and (used-dependency rotemDependency4) (revealed rotemDependency4))
		(and (used-dependency rotemDependency22) (revealed rotemDependency22)))(at apn1 apt1))
:effect 
(and (not (used-dependency rotemDependency4)) (not (used-dependency rotemDependency22)) (not (in obj12 apn1)) (at obj12 apt1) (used-dependency rotemDependency18))
)

(:action unload-airplane_apn1_obj13_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (in obj13 apn1) 
	(or 
		(and (used-dependency rotemDependency5) (revealed rotemDependency5))
		(and (used-dependency rotemDependency23) (revealed rotemDependency23)))(at apn1 apt2))
:effect 
(and (not (used-dependency rotemDependency5)) (not (used-dependency rotemDependency23)) (not (in obj13 apn1)) (at obj13 apt2) (used-dependency rotemDependency19))
)

(:action unload-airplane_apn1_obj13_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (in obj13 apn1) 
	(or 
		(and (used-dependency rotemDependency5) (revealed rotemDependency5))
		(and (used-dependency rotemDependency23) (revealed rotemDependency23)))(at apn1 apt1))
:effect 
(and (not (used-dependency rotemDependency5)) (not (used-dependency rotemDependency23)) (not (in obj13 apn1)) (at obj13 apt1) (used-dependency rotemDependency20))
)

(:action load-airplane_apn1_obj11_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at obj11 apt2) (at apn1 apt2))
:effect 
(and (not (at obj11 apt2)) (in obj11 apn1) (used-dependency rotemDependency21))
)

(:action load-airplane_apn1_obj12_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at obj12 apt2) (at apn1 apt2))
:effect 
(and (not (at obj12 apt2)) (in obj12 apn1) (used-dependency rotemDependency22))
)

(:action load-airplane_apn1_obj13_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at obj13 apt2) (at apn1 apt2))
:effect 
(and (not (at obj13 apt2)) (in obj13 apn1) (used-dependency rotemDependency23))
)

(:action fly-airplane_apn1_apt2_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at apn1 apt2))
:effect 
(and (not (at apn1 apt2)) (at apn1 apt1))
)

(:action fly-airplane_apn1_apt1_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at apn1 apt1))
:effect 
(and (not (at apn1 apt1)) (at apn1 apt2))
)

(:action dummy-init-action-rotemagent1
:precondition 
(and (can-use-init-action rotemagent1))
:effect 
(and (not (can-use-init-action rotemagent1)) (used-init-action rotemagent1) (at tru1 pos1) (at obj11 pos1) (at obj12 pos1) (at obj13 pos1) (used-dependency rotemDependency24) (used-dependency rotemDependency25) (used-dependency rotemDependency26))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (regular-actions-stage rotemplaceholder))
)

(:action unload-truck_tru1_obj11_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 apt1) (in obj11 tru1) 
	(or 
		(and (used-dependency rotemDependency24) (revealed rotemDependency24))
		(and (used-dependency rotemDependency30) (revealed rotemDependency30))))
:effect 
(and (not (used-dependency rotemDependency24)) (not (used-dependency rotemDependency30)) (not (in obj11 tru1)) (at obj11 apt1) (used-dependency rotemDependency27))
)

(:action unload-truck_tru1_obj12_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 apt1) (in obj12 tru1) 
	(or 
		(and (used-dependency rotemDependency25) (revealed rotemDependency25))
		(and (used-dependency rotemDependency31) (revealed rotemDependency31))))
:effect 
(and (not (used-dependency rotemDependency25)) (not (used-dependency rotemDependency31)) (not (in obj12 tru1)) (at obj12 apt1) (used-dependency rotemDependency28))
)

(:action unload-truck_tru1_obj13_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 apt1) (in obj13 tru1) 
	(or 
		(and (used-dependency rotemDependency26) (revealed rotemDependency26))
		(and (used-dependency rotemDependency32) (revealed rotemDependency32))))
:effect 
(and (not (used-dependency rotemDependency26)) (not (used-dependency rotemDependency32)) (not (in obj13 tru1)) (at obj13 apt1) (used-dependency rotemDependency29))
)

(:action load-truck_tru1_obj11_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 apt1) (at obj11 apt1))
:effect 
(and (not (at obj11 apt1)) (in obj11 tru1) (used-dependency rotemDependency30))
)

(:action load-truck_tru1_obj12_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 apt1) (at obj12 apt1))
:effect 
(and (not (at obj12 apt1)) (in obj12 tru1) (used-dependency rotemDependency31))
)

(:action load-truck_tru1_obj13_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 apt1) (at obj13 apt1))
:effect 
(and (not (at obj13 apt1)) (in obj13 tru1) (used-dependency rotemDependency32))
)

(:action load-truck_tru1_obj21_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 apt1) (at obj21 apt1))
:effect 
(and (not (at obj21 apt1)) (in obj21 tru1) (used-dependency rotemDependency33))
)

(:action load-truck_tru1_obj22_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 apt1) (at obj22 apt1))
:effect 
(and (not (at obj22 apt1)) (in obj22 tru1) (used-dependency rotemDependency34))
)

(:action load-truck_tru1_obj23_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 apt1) (at obj23 apt1))
:effect 
(and (not (at obj23 apt1)) (in obj23 tru1) (used-dependency rotemDependency35))
)

(:action unload-truck_tru1_obj21_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 apt1) (in obj21 tru1) (used-dependency rotemDependency33) (revealed rotemDependency33))
:effect 
(and (not (used-dependency rotemDependency33)) (not (in obj21 tru1)) (at obj21 apt1) (used-dependency rotemDependency36))
)

(:action unload-truck_tru1_obj22_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 apt1) (in obj22 tru1) (used-dependency rotemDependency34) (revealed rotemDependency34))
:effect 
(and (not (used-dependency rotemDependency34)) (not (in obj22 tru1)) (at obj22 apt1) (used-dependency rotemDependency37))
)

(:action unload-truck_tru1_obj23_apt1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 apt1) (in obj23 tru1) (used-dependency rotemDependency35) (revealed rotemDependency35))
:effect 
(and (not (used-dependency rotemDependency35)) (not (in obj23 tru1)) (at obj23 apt1) (used-dependency rotemDependency38))
)

(:action load-truck_tru1_obj11_pos1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 pos1) (at obj11 pos1))
:effect 
(and (not (at obj11 pos1)) (in obj11 tru1))
)

(:action load-truck_tru1_obj12_pos1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 pos1) (at obj12 pos1))
:effect 
(and (not (at obj12 pos1)) (in obj12 tru1))
)

(:action load-truck_tru1_obj13_pos1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 pos1) (at obj13 pos1))
:effect 
(and (not (at obj13 pos1)) (in obj13 tru1))
)

(:action drive-truck_tru1_pos1_pos1_cit1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 pos1) (in-city tru1 pos1 cit1))
:effect 
(and (at tru1 pos1))
)

(:action drive-truck_tru1_pos1_apt1_cit1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 pos1) (in-city tru1 pos1 cit1) (in-city tru1 apt1 cit1))
:effect 
(and (not (at tru1 pos1)) (at tru1 apt1))
)

(:action unload-truck_tru1_obj11_pos1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 pos1) (in obj11 tru1))
:effect 
(and (not (in obj11 tru1)) (at obj11 pos1))
)

(:action unload-truck_tru1_obj12_pos1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 pos1) (in obj12 tru1))
:effect 
(and (not (in obj12 tru1)) (at obj12 pos1))
)

(:action unload-truck_tru1_obj13_pos1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 pos1) (in obj13 tru1))
:effect 
(and (not (in obj13 tru1)) (at obj13 pos1))
)

(:action drive-truck_tru1_apt1_pos1_cit1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 apt1) (in-city tru1 apt1 cit1) (in-city tru1 pos1 cit1))
:effect 
(and (not (at tru1 apt1)) (at tru1 pos1))
)

(:action drive-truck_tru1_apt1_apt1_cit1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 apt1) (in-city tru1 apt1 cit1))
:effect 
(and (at tru1 apt1))
)

(:action unload-truck_tru1_obj21_pos1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 pos1) (in obj21 tru1))
:effect 
(and (not (in obj21 tru1)) (at obj21 pos1))
)

(:action unload-truck_tru1_obj22_pos1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 pos1) (in obj22 tru1))
:effect 
(and (not (in obj22 tru1)) (at obj22 pos1))
)

(:action unload-truck_tru1_obj23_pos1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 pos1) (in obj23 tru1))
:effect 
(and (not (in obj23 tru1)) (at obj23 pos1))
)

(:action load-truck_tru1_obj21_pos1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 pos1) (at obj21 pos1))
:effect 
(and (not (at obj21 pos1)) (in obj21 tru1))
)

(:action load-truck_tru1_obj22_pos1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 pos1) (at obj22 pos1))
:effect 
(and (not (at obj22 pos1)) (in obj22 tru1))
)

(:action load-truck_tru1_obj23_pos1
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru1 pos1) (at obj23 pos1))
:effect 
(and (not (at obj23 pos1)) (in obj23 tru1))
)

(:action dummy-init-action-rotemagent2
:precondition 
(and (can-use-init-action rotemagent2))
:effect 
(and (not (can-use-init-action rotemagent2)) (used-init-action rotemagent2) (at tru2 pos2) (at obj21 pos2) (at obj22 pos2) (at obj23 pos2) (used-dependency rotemDependency39) (used-dependency rotemDependency40) (used-dependency rotemDependency41))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (regular-actions-stage rotemplaceholder))
)

(:action unload-truck_tru2_obj21_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 apt2) (in obj21 tru2) 
	(or 
		(and (used-dependency rotemDependency39) (revealed rotemDependency39))
		(and (used-dependency rotemDependency45) (revealed rotemDependency45))))
:effect 
(and (not (used-dependency rotemDependency39)) (not (used-dependency rotemDependency45)) (not (in obj21 tru2)) (at obj21 apt2) (used-dependency rotemDependency42))
)

(:action unload-truck_tru2_obj22_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 apt2) (in obj22 tru2) 
	(or 
		(and (used-dependency rotemDependency40) (revealed rotemDependency40))
		(and (used-dependency rotemDependency46) (revealed rotemDependency46))))
:effect 
(and (not (used-dependency rotemDependency40)) (not (used-dependency rotemDependency46)) (not (in obj22 tru2)) (at obj22 apt2) (used-dependency rotemDependency43))
)

(:action unload-truck_tru2_obj23_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 apt2) (in obj23 tru2) 
	(or 
		(and (used-dependency rotemDependency41) (revealed rotemDependency41))
		(and (used-dependency rotemDependency47) (revealed rotemDependency47))))
:effect 
(and (not (used-dependency rotemDependency41)) (not (used-dependency rotemDependency47)) (not (in obj23 tru2)) (at obj23 apt2) (used-dependency rotemDependency44))
)

(:action load-truck_tru2_obj21_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 apt2) (at obj21 apt2))
:effect 
(and (not (at obj21 apt2)) (in obj21 tru2) (used-dependency rotemDependency45))
)

(:action load-truck_tru2_obj22_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 apt2) (at obj22 apt2))
:effect 
(and (not (at obj22 apt2)) (in obj22 tru2) (used-dependency rotemDependency46))
)

(:action load-truck_tru2_obj23_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 apt2) (at obj23 apt2))
:effect 
(and (not (at obj23 apt2)) (in obj23 tru2) (used-dependency rotemDependency47))
)

(:action load-truck_tru2_obj11_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 apt2) (at obj11 apt2))
:effect 
(and (not (at obj11 apt2)) (in obj11 tru2) (used-dependency rotemDependency48))
)

(:action load-truck_tru2_obj12_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 apt2) (at obj12 apt2))
:effect 
(and (not (at obj12 apt2)) (in obj12 tru2) (used-dependency rotemDependency49))
)

(:action load-truck_tru2_obj13_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 apt2) (at obj13 apt2))
:effect 
(and (not (at obj13 apt2)) (in obj13 tru2) (used-dependency rotemDependency50))
)

(:action unload-truck_tru2_obj11_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 apt2) (in obj11 tru2) (used-dependency rotemDependency48) (revealed rotemDependency48))
:effect 
(and (not (used-dependency rotemDependency48)) (not (in obj11 tru2)) (at obj11 apt2) (used-dependency rotemDependency51))
)

(:action unload-truck_tru2_obj12_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 apt2) (in obj12 tru2) (used-dependency rotemDependency49) (revealed rotemDependency49))
:effect 
(and (not (used-dependency rotemDependency49)) (not (in obj12 tru2)) (at obj12 apt2) (used-dependency rotemDependency52))
)

(:action unload-truck_tru2_obj13_apt2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 apt2) (in obj13 tru2) (used-dependency rotemDependency50) (revealed rotemDependency50))
:effect 
(and (not (used-dependency rotemDependency50)) (not (in obj13 tru2)) (at obj13 apt2) (used-dependency rotemDependency53))
)

(:action load-truck_tru2_obj21_pos2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 pos2) (at obj21 pos2))
:effect 
(and (not (at obj21 pos2)) (in obj21 tru2))
)

(:action load-truck_tru2_obj22_pos2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 pos2) (at obj22 pos2))
:effect 
(and (not (at obj22 pos2)) (in obj22 tru2))
)

(:action load-truck_tru2_obj23_pos2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 pos2) (at obj23 pos2))
:effect 
(and (not (at obj23 pos2)) (in obj23 tru2))
)

(:action drive-truck_tru2_pos2_pos2_cit2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 pos2) (in-city tru2 pos2 cit2))
:effect 
(and (at tru2 pos2))
)

(:action drive-truck_tru2_pos2_apt2_cit2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 pos2) (in-city tru2 pos2 cit2) (in-city tru2 apt2 cit2))
:effect 
(and (not (at tru2 pos2)) (at tru2 apt2))
)

(:action unload-truck_tru2_obj21_pos2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 pos2) (in obj21 tru2))
:effect 
(and (not (in obj21 tru2)) (at obj21 pos2))
)

(:action unload-truck_tru2_obj22_pos2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 pos2) (in obj22 tru2))
:effect 
(and (not (in obj22 tru2)) (at obj22 pos2))
)

(:action unload-truck_tru2_obj23_pos2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 pos2) (in obj23 tru2))
:effect 
(and (not (in obj23 tru2)) (at obj23 pos2))
)

(:action drive-truck_tru2_apt2_pos2_cit2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 apt2) (in-city tru2 apt2 cit2) (in-city tru2 pos2 cit2))
:effect 
(and (not (at tru2 apt2)) (at tru2 pos2))
)

(:action drive-truck_tru2_apt2_apt2_cit2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 apt2) (in-city tru2 apt2 cit2))
:effect 
(and (at tru2 apt2))
)

(:action unload-truck_tru2_obj11_pos2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 pos2) (in obj11 tru2))
:effect 
(and (not (in obj11 tru2)) (at obj11 pos2))
)

(:action unload-truck_tru2_obj12_pos2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 pos2) (in obj12 tru2))
:effect 
(and (not (in obj12 tru2)) (at obj12 pos2))
)

(:action unload-truck_tru2_obj13_pos2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 pos2) (in obj13 tru2))
:effect 
(and (not (in obj13 tru2)) (at obj13 pos2))
)

(:action load-truck_tru2_obj11_pos2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 pos2) (at obj11 pos2))
:effect 
(and (not (at obj11 pos2)) (in obj11 tru2))
)

(:action load-truck_tru2_obj12_pos2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 pos2) (at obj12 pos2))
:effect 
(and (not (at obj12 pos2)) (in obj12 tru2))
)

(:action load-truck_tru2_obj13_pos2
:precondition 
(and (regular-actions-stage rotemplaceholder) (at tru2 pos2) (at obj13 pos2))
:effect 
(and (not (at obj13 pos2)) (in obj13 tru2))
)

(:action reveal-dependency
:parameters ( ?opDepRotemAgent - opDepRotemAgent ?rotemDependency - rotemDependency ?rotemNumber1 - rotemNumber ?rotemNumber2 - rotemNumber)
:precondition 
(and (rotemNext ?rotemNumber1 ?rotemNumber2) (revealed-number-of-dependencies ?opDepRotemAgent ?rotemNumber1) (belongs-to ?rotemDependency ?opDepRotemAgent))
:effect 
(and (revealed ?rotemDependency) (not (revealed-number-of-dependencies ?opDepRotemAgent ?rotemNumber1)) (revealed-number-of-dependencies ?opDepRotemAgent ?rotemNumber2))
)

)
