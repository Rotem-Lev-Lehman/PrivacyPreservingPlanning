(define (domain PublicDomain)
(:requirements :strips :typing)
(:types object
node - object
level - object
message - object
base - node
sensor - node)
(:constants
 base - base
 node1 - sensor
 node2 - sensor
 node3 - sensor
 node4 - sensor
 node5 - sensor
 zero - level
 low - level
 normal - level
 high - level
 msg1-1 - message
 msg2-1 - message
 msg3-1 - message
 msg4-1 - message
 msg5-1 - message
)

(:predicates
(neighbor ?n1 - node ?n2 - node)
(has-data ?n - node ?s - sensor)
(higher ?l1 - level ?l2 - level)
(next ?l1 - level ?l2 - level)
(is-message-at ?m - message ?n - node)
(message-data ?m - message ?s - sensor)
(sending ?from - sensor ?to - node ?m - message)
(energy ?s - sensor ?lv - level)
(P_ARTIFICIAL1000)
(P_ARTIFICIAL1001)
(P_ARTIFICIAL2000)
(P_ARTIFICIAL2001)
(P_ARTIFICIAL3000)
(P_ARTIFICIAL3001)
(P_ARTIFICIAL4000)
(P_ARTIFICIAL4001)
(P_ARTIFICIAL5000)
(P_ARTIFICIAL5001)
(P_ARTIFICIAL5002)
(P_ARTIFICIAL5003)
)

(:action receive-message_base_node5_msg5-1
:precondition 
(and (not (is-message-at msg5-1 base)) (sending node5 base msg5-1))
:effect 
(and (not (sending node5 base msg5-1)) (is-message-at msg5-1 base))
)

(:action receive-message_base_node5_msg3-1
:precondition 
(and (not (is-message-at msg3-1 base)) (sending node5 base msg3-1))
:effect 
(and (not (sending node5 base msg3-1)) (is-message-at msg3-1 base))
)

(:action receive-message_base_node5_msg2-1
:precondition 
(and (not (is-message-at msg2-1 base)) (sending node5 base msg2-1))
:effect 
(and (not (sending node5 base msg2-1)) (is-message-at msg2-1 base))
)

(:action receive-message_base_node5_msg1-1
:precondition 
(and (not (is-message-at msg1-1 base)) (sending node5 base msg1-1))
:effect 
(and (not (sending node5 base msg1-1)) (is-message-at msg1-1 base))
)

(:action receive-message_base_node5_msg4-1
:precondition 
(and (not (is-message-at msg4-1 base)) (sending node5 base msg4-1))
:effect 
(and (not (sending node5 base msg4-1)) (is-message-at msg4-1 base))
)

(:action get-data-from-message_base_node5_msg5-1
:precondition 
(and (is-message-at msg5-1 base) (message-data msg5-1 node5))
:effect 
(and (not (message-data msg5-1 node5)) (has-data base node5))
)

(:action get-data-from-message_base_node3_msg5-1
:precondition 
(and (is-message-at msg5-1 base) (message-data msg5-1 node3))
:effect 
(and (not (message-data msg5-1 node3)) (has-data base node3))
)

(:action get-data-from-message_base_node2_msg5-1
:precondition 
(and (is-message-at msg5-1 base) (message-data msg5-1 node2))
:effect 
(and (not (message-data msg5-1 node2)) (has-data base node2))
)

(:action get-data-from-message_base_node1_msg5-1
:precondition 
(and (is-message-at msg5-1 base) (message-data msg5-1 node1))
:effect 
(and (not (message-data msg5-1 node1)) (has-data base node1))
)

(:action get-data-from-message_base_node4_msg5-1
:precondition 
(and (is-message-at msg5-1 base) (message-data msg5-1 node4))
:effect 
(and (not (message-data msg5-1 node4)) (has-data base node4))
)

(:action get-data-from-message_base_node3_msg3-1
:precondition 
(and (is-message-at msg3-1 base) (message-data msg3-1 node3))
:effect 
(and (not (message-data msg3-1 node3)) (has-data base node3))
)

(:action get-data-from-message_base_node2_msg3-1
:precondition 
(and (is-message-at msg3-1 base) (message-data msg3-1 node2))
:effect 
(and (not (message-data msg3-1 node2)) (has-data base node2))
)

(:action get-data-from-message_base_node1_msg3-1
:precondition 
(and (is-message-at msg3-1 base) (message-data msg3-1 node1))
:effect 
(and (not (message-data msg3-1 node1)) (has-data base node1))
)

(:action get-data-from-message_base_node4_msg3-1
:precondition 
(and (is-message-at msg3-1 base) (message-data msg3-1 node4))
:effect 
(and (not (message-data msg3-1 node4)) (has-data base node4))
)

(:action get-data-from-message_base_node5_msg3-1
:precondition 
(and (is-message-at msg3-1 base) (message-data msg3-1 node5))
:effect 
(and (not (message-data msg3-1 node5)) (has-data base node5))
)

(:action get-data-from-message_base_node2_msg2-1
:precondition 
(and (is-message-at msg2-1 base) (message-data msg2-1 node2))
:effect 
(and (not (message-data msg2-1 node2)) (has-data base node2))
)

(:action get-data-from-message_base_node1_msg2-1
:precondition 
(and (is-message-at msg2-1 base) (message-data msg2-1 node1))
:effect 
(and (not (message-data msg2-1 node1)) (has-data base node1))
)

(:action get-data-from-message_base_node3_msg2-1
:precondition 
(and (is-message-at msg2-1 base) (message-data msg2-1 node3))
:effect 
(and (not (message-data msg2-1 node3)) (has-data base node3))
)

(:action get-data-from-message_base_node4_msg2-1
:precondition 
(and (is-message-at msg2-1 base) (message-data msg2-1 node4))
:effect 
(and (not (message-data msg2-1 node4)) (has-data base node4))
)

(:action get-data-from-message_base_node5_msg2-1
:precondition 
(and (is-message-at msg2-1 base) (message-data msg2-1 node5))
:effect 
(and (not (message-data msg2-1 node5)) (has-data base node5))
)

(:action get-data-from-message_base_node1_msg1-1
:precondition 
(and (is-message-at msg1-1 base) (message-data msg1-1 node1))
:effect 
(and (not (message-data msg1-1 node1)) (has-data base node1))
)

(:action get-data-from-message_base_node2_msg1-1
:precondition 
(and (is-message-at msg1-1 base) (message-data msg1-1 node2))
:effect 
(and (not (message-data msg1-1 node2)) (has-data base node2))
)

(:action get-data-from-message_base_node3_msg1-1
:precondition 
(and (is-message-at msg1-1 base) (message-data msg1-1 node3))
:effect 
(and (not (message-data msg1-1 node3)) (has-data base node3))
)

(:action get-data-from-message_base_node4_msg1-1
:precondition 
(and (is-message-at msg1-1 base) (message-data msg1-1 node4))
:effect 
(and (not (message-data msg1-1 node4)) (has-data base node4))
)

(:action get-data-from-message_base_node5_msg1-1
:precondition 
(and (is-message-at msg1-1 base) (message-data msg1-1 node5))
:effect 
(and (not (message-data msg1-1 node5)) (has-data base node5))
)

(:action get-data-from-message_base_node4_msg4-1
:precondition 
(and (is-message-at msg4-1 base) (message-data msg4-1 node4))
:effect 
(and (not (message-data msg4-1 node4)) (has-data base node4))
)

(:action get-data-from-message_base_node3_msg4-1
:precondition 
(and (is-message-at msg4-1 base) (message-data msg4-1 node3))
:effect 
(and (not (message-data msg4-1 node3)) (has-data base node3))
)

(:action get-data-from-message_base_node2_msg4-1
:precondition 
(and (is-message-at msg4-1 base) (message-data msg4-1 node2))
:effect 
(and (not (message-data msg4-1 node2)) (has-data base node2))
)

(:action get-data-from-message_base_node1_msg4-1
:precondition 
(and (is-message-at msg4-1 base) (message-data msg4-1 node1))
:effect 
(and (not (message-data msg4-1 node1)) (has-data base node1))
)

(:action get-data-from-message_base_node5_msg4-1
:precondition 
(and (is-message-at msg4-1 base) (message-data msg4-1 node5))
:effect 
(and (not (message-data msg4-1 node5)) (has-data base node5))
)

(:action generate-data_node1_normal_low
:precondition 
(and (P_ARTIFICIAL1000 ) (higher normal zero) (next normal low))
:effect 
(and (not (P_ARTIFICIAL1000 )) (has-data node1 node1) (P_ARTIFICIAL1001 ))
)

(:action send-message_node1_node2_msg1-1_normal_low
:precondition 
(and (P_ARTIFICIAL1000 ) (higher normal zero) (next normal low) (neighbor node1 node2) (is-message-at msg1-1 node1) (not (is-message-at msg1-1 node2)) (not (sending node1 node2 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL1000 )) (not (is-message-at msg1-1 node1)) (sending node1 node2 msg1-1) (P_ARTIFICIAL1001 ))
)

(:action generate-data_node1_low_zero
:precondition 
(and (P_ARTIFICIAL1001 ) (higher low zero) (next low zero))
:effect 
(and (not (P_ARTIFICIAL1001 )) (has-data node1 node1))
)

(:action add-to-message_node1_node1_msg1-1
:precondition 
(and (has-data node1 node1) (is-message-at msg1-1 node1) (not (message-data msg1-1 node1)))
:effect 
(and (not (has-data node1 node1)) (message-data msg1-1 node1))
)

(:action send-message_node1_node2_msg1-1_low_zero
:precondition 
(and (P_ARTIFICIAL1001 ) (higher low zero) (next low zero) (neighbor node1 node2) (is-message-at msg1-1 node1) (not (is-message-at msg1-1 node2)) (not (sending node1 node2 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL1001 )) (not (is-message-at msg1-1 node1)) (sending node1 node2 msg1-1))
)

(:action get-data-from-message_node1_node1_msg1-1
:precondition 
(and (is-message-at msg1-1 node1) (message-data msg1-1 node1))
:effect 
(and (not (message-data msg1-1 node1)) (has-data node1 node1))
)

(:action receive-message_node1_node2_msg2-1
:precondition 
(and (not (is-message-at msg2-1 node1)) (sending node2 node1 msg2-1))
:effect 
(and (not (sending node2 node1 msg2-1)) (is-message-at msg2-1 node1))
)

(:action receive-message_node1_node2_msg1-1
:precondition 
(and (not (is-message-at msg1-1 node1)) (sending node2 node1 msg1-1))
:effect 
(and (not (sending node2 node1 msg1-1)) (is-message-at msg1-1 node1))
)

(:action get-data-from-message_node1_node2_msg1-1
:precondition 
(and (is-message-at msg1-1 node1) (message-data msg1-1 node2))
:effect 
(and (not (message-data msg1-1 node2)) (has-data node1 node2))
)

(:action get-data-from-message_node1_node3_msg1-1
:precondition 
(and (is-message-at msg1-1 node1) (message-data msg1-1 node3))
:effect 
(and (not (message-data msg1-1 node3)) (has-data node1 node3))
)

(:action get-data-from-message_node1_node4_msg1-1
:precondition 
(and (is-message-at msg1-1 node1) (message-data msg1-1 node4))
:effect 
(and (not (message-data msg1-1 node4)) (has-data node1 node4))
)

(:action get-data-from-message_node1_node5_msg1-1
:precondition 
(and (is-message-at msg1-1 node1) (message-data msg1-1 node5))
:effect 
(and (not (message-data msg1-1 node5)) (has-data node1 node5))
)

(:action add-to-message_node1_node1_msg2-1
:precondition 
(and (has-data node1 node1) (is-message-at msg2-1 node1) (not (message-data msg2-1 node1)))
:effect 
(and (not (has-data node1 node1)) (message-data msg2-1 node1))
)

(:action add-to-message_node1_node2_msg1-1
:precondition 
(and (has-data node1 node2) (is-message-at msg1-1 node1) (not (message-data msg1-1 node2)))
:effect 
(and (not (has-data node1 node2)) (message-data msg1-1 node2))
)

(:action add-to-message_node1_node2_msg2-1
:precondition 
(and (has-data node1 node2) (is-message-at msg2-1 node1) (not (message-data msg2-1 node2)))
:effect 
(and (not (has-data node1 node2)) (message-data msg2-1 node2))
)

(:action add-to-message_node1_node3_msg1-1
:precondition 
(and (has-data node1 node3) (is-message-at msg1-1 node1) (not (message-data msg1-1 node3)))
:effect 
(and (not (has-data node1 node3)) (message-data msg1-1 node3))
)

(:action add-to-message_node1_node3_msg2-1
:precondition 
(and (has-data node1 node3) (is-message-at msg2-1 node1) (not (message-data msg2-1 node3)))
:effect 
(and (not (has-data node1 node3)) (message-data msg2-1 node3))
)

(:action add-to-message_node1_node4_msg1-1
:precondition 
(and (has-data node1 node4) (is-message-at msg1-1 node1) (not (message-data msg1-1 node4)))
:effect 
(and (not (has-data node1 node4)) (message-data msg1-1 node4))
)

(:action add-to-message_node1_node4_msg2-1
:precondition 
(and (has-data node1 node4) (is-message-at msg2-1 node1) (not (message-data msg2-1 node4)))
:effect 
(and (not (has-data node1 node4)) (message-data msg2-1 node4))
)

(:action add-to-message_node1_node5_msg1-1
:precondition 
(and (has-data node1 node5) (is-message-at msg1-1 node1) (not (message-data msg1-1 node5)))
:effect 
(and (not (has-data node1 node5)) (message-data msg1-1 node5))
)

(:action add-to-message_node1_node5_msg2-1
:precondition 
(and (has-data node1 node5) (is-message-at msg2-1 node1) (not (message-data msg2-1 node5)))
:effect 
(and (not (has-data node1 node5)) (message-data msg2-1 node5))
)

(:action send-message_node1_node2_msg2-1_normal_low
:precondition 
(and (P_ARTIFICIAL1000 ) (higher normal zero) (next normal low) (neighbor node1 node2) (is-message-at msg2-1 node1) (not (is-message-at msg2-1 node2)) (not (sending node1 node2 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL1000 )) (not (is-message-at msg2-1 node1)) (sending node1 node2 msg2-1) (P_ARTIFICIAL1001 ))
)

(:action send-message_node1_node2_msg2-1_low_zero
:precondition 
(and (P_ARTIFICIAL1001 ) (higher low zero) (next low zero) (neighbor node1 node2) (is-message-at msg2-1 node1) (not (is-message-at msg2-1 node2)) (not (sending node1 node2 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL1001 )) (not (is-message-at msg2-1 node1)) (sending node1 node2 msg2-1))
)

(:action get-data-from-message_node1_node2_msg2-1
:precondition 
(and (is-message-at msg2-1 node1) (message-data msg2-1 node2))
:effect 
(and (not (message-data msg2-1 node2)) (has-data node1 node2))
)

(:action get-data-from-message_node1_node1_msg2-1
:precondition 
(and (is-message-at msg2-1 node1) (message-data msg2-1 node1))
:effect 
(and (not (message-data msg2-1 node1)) (has-data node1 node1))
)

(:action get-data-from-message_node1_node3_msg2-1
:precondition 
(and (is-message-at msg2-1 node1) (message-data msg2-1 node3))
:effect 
(and (not (message-data msg2-1 node3)) (has-data node1 node3))
)

(:action get-data-from-message_node1_node4_msg2-1
:precondition 
(and (is-message-at msg2-1 node1) (message-data msg2-1 node4))
:effect 
(and (not (message-data msg2-1 node4)) (has-data node1 node4))
)

(:action get-data-from-message_node1_node5_msg2-1
:precondition 
(and (is-message-at msg2-1 node1) (message-data msg2-1 node5))
:effect 
(and (not (message-data msg2-1 node5)) (has-data node1 node5))
)

(:action receive-message_node1_node2_msg3-1
:precondition 
(and (not (is-message-at msg3-1 node1)) (sending node2 node1 msg3-1))
:effect 
(and (not (sending node2 node1 msg3-1)) (is-message-at msg3-1 node1))
)

(:action add-to-message_node1_node1_msg3-1
:precondition 
(and (has-data node1 node1) (is-message-at msg3-1 node1) (not (message-data msg3-1 node1)))
:effect 
(and (not (has-data node1 node1)) (message-data msg3-1 node1))
)

(:action add-to-message_node1_node2_msg3-1
:precondition 
(and (has-data node1 node2) (is-message-at msg3-1 node1) (not (message-data msg3-1 node2)))
:effect 
(and (not (has-data node1 node2)) (message-data msg3-1 node2))
)

(:action add-to-message_node1_node3_msg3-1
:precondition 
(and (has-data node1 node3) (is-message-at msg3-1 node1) (not (message-data msg3-1 node3)))
:effect 
(and (not (has-data node1 node3)) (message-data msg3-1 node3))
)

(:action add-to-message_node1_node4_msg3-1
:precondition 
(and (has-data node1 node4) (is-message-at msg3-1 node1) (not (message-data msg3-1 node4)))
:effect 
(and (not (has-data node1 node4)) (message-data msg3-1 node4))
)

(:action add-to-message_node1_node5_msg3-1
:precondition 
(and (has-data node1 node5) (is-message-at msg3-1 node1) (not (message-data msg3-1 node5)))
:effect 
(and (not (has-data node1 node5)) (message-data msg3-1 node5))
)

(:action send-message_node1_node2_msg3-1_normal_low
:precondition 
(and (P_ARTIFICIAL1000 ) (higher normal zero) (next normal low) (neighbor node1 node2) (is-message-at msg3-1 node1) (not (is-message-at msg3-1 node2)) (not (sending node1 node2 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL1000 )) (not (is-message-at msg3-1 node1)) (sending node1 node2 msg3-1) (P_ARTIFICIAL1001 ))
)

(:action send-message_node1_node2_msg3-1_low_zero
:precondition 
(and (P_ARTIFICIAL1001 ) (higher low zero) (next low zero) (neighbor node1 node2) (is-message-at msg3-1 node1) (not (is-message-at msg3-1 node2)) (not (sending node1 node2 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL1001 )) (not (is-message-at msg3-1 node1)) (sending node1 node2 msg3-1))
)

(:action get-data-from-message_node1_node3_msg3-1
:precondition 
(and (is-message-at msg3-1 node1) (message-data msg3-1 node3))
:effect 
(and (not (message-data msg3-1 node3)) (has-data node1 node3))
)

(:action get-data-from-message_node1_node2_msg3-1
:precondition 
(and (is-message-at msg3-1 node1) (message-data msg3-1 node2))
:effect 
(and (not (message-data msg3-1 node2)) (has-data node1 node2))
)

(:action get-data-from-message_node1_node1_msg3-1
:precondition 
(and (is-message-at msg3-1 node1) (message-data msg3-1 node1))
:effect 
(and (not (message-data msg3-1 node1)) (has-data node1 node1))
)

(:action get-data-from-message_node1_node4_msg3-1
:precondition 
(and (is-message-at msg3-1 node1) (message-data msg3-1 node4))
:effect 
(and (not (message-data msg3-1 node4)) (has-data node1 node4))
)

(:action get-data-from-message_node1_node5_msg3-1
:precondition 
(and (is-message-at msg3-1 node1) (message-data msg3-1 node5))
:effect 
(and (not (message-data msg3-1 node5)) (has-data node1 node5))
)

(:action receive-message_node1_node2_msg4-1
:precondition 
(and (not (is-message-at msg4-1 node1)) (sending node2 node1 msg4-1))
:effect 
(and (not (sending node2 node1 msg4-1)) (is-message-at msg4-1 node1))
)

(:action receive-message_node1_node2_msg5-1
:precondition 
(and (not (is-message-at msg5-1 node1)) (sending node2 node1 msg5-1))
:effect 
(and (not (sending node2 node1 msg5-1)) (is-message-at msg5-1 node1))
)

(:action add-to-message_node1_node1_msg4-1
:precondition 
(and (has-data node1 node1) (is-message-at msg4-1 node1) (not (message-data msg4-1 node1)))
:effect 
(and (not (has-data node1 node1)) (message-data msg4-1 node1))
)

(:action add-to-message_node1_node1_msg5-1
:precondition 
(and (has-data node1 node1) (is-message-at msg5-1 node1) (not (message-data msg5-1 node1)))
:effect 
(and (not (has-data node1 node1)) (message-data msg5-1 node1))
)

(:action add-to-message_node1_node2_msg4-1
:precondition 
(and (has-data node1 node2) (is-message-at msg4-1 node1) (not (message-data msg4-1 node2)))
:effect 
(and (not (has-data node1 node2)) (message-data msg4-1 node2))
)

(:action add-to-message_node1_node2_msg5-1
:precondition 
(and (has-data node1 node2) (is-message-at msg5-1 node1) (not (message-data msg5-1 node2)))
:effect 
(and (not (has-data node1 node2)) (message-data msg5-1 node2))
)

(:action add-to-message_node1_node3_msg4-1
:precondition 
(and (has-data node1 node3) (is-message-at msg4-1 node1) (not (message-data msg4-1 node3)))
:effect 
(and (not (has-data node1 node3)) (message-data msg4-1 node3))
)

(:action add-to-message_node1_node3_msg5-1
:precondition 
(and (has-data node1 node3) (is-message-at msg5-1 node1) (not (message-data msg5-1 node3)))
:effect 
(and (not (has-data node1 node3)) (message-data msg5-1 node3))
)

(:action add-to-message_node1_node4_msg4-1
:precondition 
(and (has-data node1 node4) (is-message-at msg4-1 node1) (not (message-data msg4-1 node4)))
:effect 
(and (not (has-data node1 node4)) (message-data msg4-1 node4))
)

(:action add-to-message_node1_node4_msg5-1
:precondition 
(and (has-data node1 node4) (is-message-at msg5-1 node1) (not (message-data msg5-1 node4)))
:effect 
(and (not (has-data node1 node4)) (message-data msg5-1 node4))
)

(:action add-to-message_node1_node5_msg4-1
:precondition 
(and (has-data node1 node5) (is-message-at msg4-1 node1) (not (message-data msg4-1 node5)))
:effect 
(and (not (has-data node1 node5)) (message-data msg4-1 node5))
)

(:action add-to-message_node1_node5_msg5-1
:precondition 
(and (has-data node1 node5) (is-message-at msg5-1 node1) (not (message-data msg5-1 node5)))
:effect 
(and (not (has-data node1 node5)) (message-data msg5-1 node5))
)

(:action send-message_node1_node2_msg4-1_normal_low
:precondition 
(and (P_ARTIFICIAL1000 ) (higher normal zero) (next normal low) (neighbor node1 node2) (is-message-at msg4-1 node1) (not (is-message-at msg4-1 node2)) (not (sending node1 node2 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL1000 )) (not (is-message-at msg4-1 node1)) (sending node1 node2 msg4-1) (P_ARTIFICIAL1001 ))
)

(:action send-message_node1_node2_msg5-1_normal_low
:precondition 
(and (P_ARTIFICIAL1000 ) (higher normal zero) (next normal low) (neighbor node1 node2) (is-message-at msg5-1 node1) (not (is-message-at msg5-1 node2)) (not (sending node1 node2 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL1000 )) (not (is-message-at msg5-1 node1)) (sending node1 node2 msg5-1) (P_ARTIFICIAL1001 ))
)

(:action send-message_node1_node2_msg4-1_low_zero
:precondition 
(and (P_ARTIFICIAL1001 ) (higher low zero) (next low zero) (neighbor node1 node2) (is-message-at msg4-1 node1) (not (is-message-at msg4-1 node2)) (not (sending node1 node2 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL1001 )) (not (is-message-at msg4-1 node1)) (sending node1 node2 msg4-1))
)

(:action send-message_node1_node2_msg5-1_low_zero
:precondition 
(and (P_ARTIFICIAL1001 ) (higher low zero) (next low zero) (neighbor node1 node2) (is-message-at msg5-1 node1) (not (is-message-at msg5-1 node2)) (not (sending node1 node2 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL1001 )) (not (is-message-at msg5-1 node1)) (sending node1 node2 msg5-1))
)

(:action get-data-from-message_node1_node4_msg4-1
:precondition 
(and (is-message-at msg4-1 node1) (message-data msg4-1 node4))
:effect 
(and (not (message-data msg4-1 node4)) (has-data node1 node4))
)

(:action get-data-from-message_node1_node3_msg4-1
:precondition 
(and (is-message-at msg4-1 node1) (message-data msg4-1 node3))
:effect 
(and (not (message-data msg4-1 node3)) (has-data node1 node3))
)

(:action get-data-from-message_node1_node2_msg4-1
:precondition 
(and (is-message-at msg4-1 node1) (message-data msg4-1 node2))
:effect 
(and (not (message-data msg4-1 node2)) (has-data node1 node2))
)

(:action get-data-from-message_node1_node1_msg4-1
:precondition 
(and (is-message-at msg4-1 node1) (message-data msg4-1 node1))
:effect 
(and (not (message-data msg4-1 node1)) (has-data node1 node1))
)

(:action get-data-from-message_node1_node5_msg4-1
:precondition 
(and (is-message-at msg4-1 node1) (message-data msg4-1 node5))
:effect 
(and (not (message-data msg4-1 node5)) (has-data node1 node5))
)

(:action get-data-from-message_node1_node5_msg5-1
:precondition 
(and (is-message-at msg5-1 node1) (message-data msg5-1 node5))
:effect 
(and (not (message-data msg5-1 node5)) (has-data node1 node5))
)

(:action get-data-from-message_node1_node3_msg5-1
:precondition 
(and (is-message-at msg5-1 node1) (message-data msg5-1 node3))
:effect 
(and (not (message-data msg5-1 node3)) (has-data node1 node3))
)

(:action get-data-from-message_node1_node2_msg5-1
:precondition 
(and (is-message-at msg5-1 node1) (message-data msg5-1 node2))
:effect 
(and (not (message-data msg5-1 node2)) (has-data node1 node2))
)

(:action get-data-from-message_node1_node1_msg5-1
:precondition 
(and (is-message-at msg5-1 node1) (message-data msg5-1 node1))
:effect 
(and (not (message-data msg5-1 node1)) (has-data node1 node1))
)

(:action get-data-from-message_node1_node4_msg5-1
:precondition 
(and (is-message-at msg5-1 node1) (message-data msg5-1 node4))
:effect 
(and (not (message-data msg5-1 node4)) (has-data node1 node4))
)

(:action generate-data_node2_normal_low
:precondition 
(and (P_ARTIFICIAL2000 ) (higher normal zero) (next normal low))
:effect 
(and (not (P_ARTIFICIAL2000 )) (has-data node2 node2) (P_ARTIFICIAL2001 ))
)

(:action send-message_node2_node1_msg2-1_normal_low
:precondition 
(and (P_ARTIFICIAL2000 ) (higher normal zero) (next normal low) (neighbor node2 node1) (is-message-at msg2-1 node2) (not (is-message-at msg2-1 node1)) (not (sending node2 node1 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL2000 )) (not (is-message-at msg2-1 node2)) (sending node2 node1 msg2-1) (P_ARTIFICIAL2001 ))
)

(:action send-message_node2_node3_msg2-1_normal_low
:precondition 
(and (P_ARTIFICIAL2000 ) (higher normal zero) (next normal low) (neighbor node2 node3) (is-message-at msg2-1 node2) (not (is-message-at msg2-1 node3)) (not (sending node2 node3 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL2000 )) (not (is-message-at msg2-1 node2)) (sending node2 node3 msg2-1) (P_ARTIFICIAL2001 ))
)

(:action receive-message_node2_node1_msg1-1
:precondition 
(and (not (is-message-at msg1-1 node2)) (sending node1 node2 msg1-1))
:effect 
(and (not (sending node1 node2 msg1-1)) (is-message-at msg1-1 node2))
)

(:action generate-data_node2_low_zero
:precondition 
(and (P_ARTIFICIAL2001 ) (higher low zero) (next low zero))
:effect 
(and (not (P_ARTIFICIAL2001 )) (has-data node2 node2))
)

(:action add-to-message_node2_node2_msg2-1
:precondition 
(and (has-data node2 node2) (is-message-at msg2-1 node2) (not (message-data msg2-1 node2)))
:effect 
(and (not (has-data node2 node2)) (message-data msg2-1 node2))
)

(:action add-to-message_node2_node2_msg1-1
:precondition 
(and (has-data node2 node2) (is-message-at msg1-1 node2) (not (message-data msg1-1 node2)))
:effect 
(and (not (has-data node2 node2)) (message-data msg1-1 node2))
)

(:action send-message_node2_node1_msg1-1_normal_low
:precondition 
(and (P_ARTIFICIAL2000 ) (higher normal zero) (next normal low) (neighbor node2 node1) (is-message-at msg1-1 node2) (not (is-message-at msg1-1 node1)) (not (sending node2 node1 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL2000 )) (not (is-message-at msg1-1 node2)) (sending node2 node1 msg1-1) (P_ARTIFICIAL2001 ))
)

(:action send-message_node2_node3_msg1-1_normal_low
:precondition 
(and (P_ARTIFICIAL2000 ) (higher normal zero) (next normal low) (neighbor node2 node3) (is-message-at msg1-1 node2) (not (is-message-at msg1-1 node3)) (not (sending node2 node3 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL2000 )) (not (is-message-at msg1-1 node2)) (sending node2 node3 msg1-1) (P_ARTIFICIAL2001 ))
)

(:action send-message_node2_node1_msg2-1_low_zero
:precondition 
(and (P_ARTIFICIAL2001 ) (higher low zero) (next low zero) (neighbor node2 node1) (is-message-at msg2-1 node2) (not (is-message-at msg2-1 node1)) (not (sending node2 node1 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL2001 )) (not (is-message-at msg2-1 node2)) (sending node2 node1 msg2-1))
)

(:action send-message_node2_node1_msg1-1_low_zero
:precondition 
(and (P_ARTIFICIAL2001 ) (higher low zero) (next low zero) (neighbor node2 node1) (is-message-at msg1-1 node2) (not (is-message-at msg1-1 node1)) (not (sending node2 node1 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL2001 )) (not (is-message-at msg1-1 node2)) (sending node2 node1 msg1-1))
)

(:action send-message_node2_node3_msg2-1_low_zero
:precondition 
(and (P_ARTIFICIAL2001 ) (higher low zero) (next low zero) (neighbor node2 node3) (is-message-at msg2-1 node2) (not (is-message-at msg2-1 node3)) (not (sending node2 node3 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL2001 )) (not (is-message-at msg2-1 node2)) (sending node2 node3 msg2-1))
)

(:action send-message_node2_node3_msg1-1_low_zero
:precondition 
(and (P_ARTIFICIAL2001 ) (higher low zero) (next low zero) (neighbor node2 node3) (is-message-at msg1-1 node2) (not (is-message-at msg1-1 node3)) (not (sending node2 node3 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL2001 )) (not (is-message-at msg1-1 node2)) (sending node2 node3 msg1-1))
)

(:action get-data-from-message_node2_node1_msg1-1
:precondition 
(and (is-message-at msg1-1 node2) (message-data msg1-1 node1))
:effect 
(and (not (message-data msg1-1 node1)) (has-data node2 node1))
)

(:action add-to-message_node2_node1_msg2-1
:precondition 
(and (has-data node2 node1) (is-message-at msg2-1 node2) (not (message-data msg2-1 node1)))
:effect 
(and (not (has-data node2 node1)) (message-data msg2-1 node1))
)

(:action add-to-message_node2_node1_msg1-1
:precondition 
(and (has-data node2 node1) (is-message-at msg1-1 node2) (not (message-data msg1-1 node1)))
:effect 
(and (not (has-data node2 node1)) (message-data msg1-1 node1))
)

(:action get-data-from-message_node2_node2_msg2-1
:precondition 
(and (is-message-at msg2-1 node2) (message-data msg2-1 node2))
:effect 
(and (not (message-data msg2-1 node2)) (has-data node2 node2))
)

(:action get-data-from-message_node2_node2_msg1-1
:precondition 
(and (is-message-at msg1-1 node2) (message-data msg1-1 node2))
:effect 
(and (not (message-data msg1-1 node2)) (has-data node2 node2))
)

(:action get-data-from-message_node2_node1_msg2-1
:precondition 
(and (is-message-at msg2-1 node2) (message-data msg2-1 node1))
:effect 
(and (not (message-data msg2-1 node1)) (has-data node2 node1))
)

(:action receive-message_node2_node3_msg3-1
:precondition 
(and (not (is-message-at msg3-1 node2)) (sending node3 node2 msg3-1))
:effect 
(and (not (sending node3 node2 msg3-1)) (is-message-at msg3-1 node2))
)

(:action receive-message_node2_node3_msg2-1
:precondition 
(and (not (is-message-at msg2-1 node2)) (sending node3 node2 msg2-1))
:effect 
(and (not (sending node3 node2 msg2-1)) (is-message-at msg2-1 node2))
)

(:action receive-message_node2_node3_msg1-1
:precondition 
(and (not (is-message-at msg1-1 node2)) (sending node3 node2 msg1-1))
:effect 
(and (not (sending node3 node2 msg1-1)) (is-message-at msg1-1 node2))
)

(:action receive-message_node2_node1_msg2-1
:precondition 
(and (not (is-message-at msg2-1 node2)) (sending node1 node2 msg2-1))
:effect 
(and (not (sending node1 node2 msg2-1)) (is-message-at msg2-1 node2))
)

(:action get-data-from-message_node2_node3_msg2-1
:precondition 
(and (is-message-at msg2-1 node2) (message-data msg2-1 node3))
:effect 
(and (not (message-data msg2-1 node3)) (has-data node2 node3))
)

(:action get-data-from-message_node2_node4_msg2-1
:precondition 
(and (is-message-at msg2-1 node2) (message-data msg2-1 node4))
:effect 
(and (not (message-data msg2-1 node4)) (has-data node2 node4))
)

(:action get-data-from-message_node2_node5_msg2-1
:precondition 
(and (is-message-at msg2-1 node2) (message-data msg2-1 node5))
:effect 
(and (not (message-data msg2-1 node5)) (has-data node2 node5))
)

(:action get-data-from-message_node2_node3_msg1-1
:precondition 
(and (is-message-at msg1-1 node2) (message-data msg1-1 node3))
:effect 
(and (not (message-data msg1-1 node3)) (has-data node2 node3))
)

(:action get-data-from-message_node2_node4_msg1-1
:precondition 
(and (is-message-at msg1-1 node2) (message-data msg1-1 node4))
:effect 
(and (not (message-data msg1-1 node4)) (has-data node2 node4))
)

(:action get-data-from-message_node2_node5_msg1-1
:precondition 
(and (is-message-at msg1-1 node2) (message-data msg1-1 node5))
:effect 
(and (not (message-data msg1-1 node5)) (has-data node2 node5))
)

(:action add-to-message_node2_node2_msg3-1
:precondition 
(and (has-data node2 node2) (is-message-at msg3-1 node2) (not (message-data msg3-1 node2)))
:effect 
(and (not (has-data node2 node2)) (message-data msg3-1 node2))
)

(:action add-to-message_node2_node1_msg3-1
:precondition 
(and (has-data node2 node1) (is-message-at msg3-1 node2) (not (message-data msg3-1 node1)))
:effect 
(and (not (has-data node2 node1)) (message-data msg3-1 node1))
)

(:action add-to-message_node2_node3_msg2-1
:precondition 
(and (has-data node2 node3) (is-message-at msg2-1 node2) (not (message-data msg2-1 node3)))
:effect 
(and (not (has-data node2 node3)) (message-data msg2-1 node3))
)

(:action add-to-message_node2_node3_msg1-1
:precondition 
(and (has-data node2 node3) (is-message-at msg1-1 node2) (not (message-data msg1-1 node3)))
:effect 
(and (not (has-data node2 node3)) (message-data msg1-1 node3))
)

(:action add-to-message_node2_node3_msg3-1
:precondition 
(and (has-data node2 node3) (is-message-at msg3-1 node2) (not (message-data msg3-1 node3)))
:effect 
(and (not (has-data node2 node3)) (message-data msg3-1 node3))
)

(:action add-to-message_node2_node4_msg2-1
:precondition 
(and (has-data node2 node4) (is-message-at msg2-1 node2) (not (message-data msg2-1 node4)))
:effect 
(and (not (has-data node2 node4)) (message-data msg2-1 node4))
)

(:action add-to-message_node2_node4_msg1-1
:precondition 
(and (has-data node2 node4) (is-message-at msg1-1 node2) (not (message-data msg1-1 node4)))
:effect 
(and (not (has-data node2 node4)) (message-data msg1-1 node4))
)

(:action add-to-message_node2_node4_msg3-1
:precondition 
(and (has-data node2 node4) (is-message-at msg3-1 node2) (not (message-data msg3-1 node4)))
:effect 
(and (not (has-data node2 node4)) (message-data msg3-1 node4))
)

(:action add-to-message_node2_node5_msg2-1
:precondition 
(and (has-data node2 node5) (is-message-at msg2-1 node2) (not (message-data msg2-1 node5)))
:effect 
(and (not (has-data node2 node5)) (message-data msg2-1 node5))
)

(:action add-to-message_node2_node5_msg1-1
:precondition 
(and (has-data node2 node5) (is-message-at msg1-1 node2) (not (message-data msg1-1 node5)))
:effect 
(and (not (has-data node2 node5)) (message-data msg1-1 node5))
)

(:action add-to-message_node2_node5_msg3-1
:precondition 
(and (has-data node2 node5) (is-message-at msg3-1 node2) (not (message-data msg3-1 node5)))
:effect 
(and (not (has-data node2 node5)) (message-data msg3-1 node5))
)

(:action send-message_node2_node1_msg3-1_normal_low
:precondition 
(and (P_ARTIFICIAL2000 ) (higher normal zero) (next normal low) (neighbor node2 node1) (is-message-at msg3-1 node2) (not (is-message-at msg3-1 node1)) (not (sending node2 node1 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL2000 )) (not (is-message-at msg3-1 node2)) (sending node2 node1 msg3-1) (P_ARTIFICIAL2001 ))
)

(:action send-message_node2_node3_msg3-1_normal_low
:precondition 
(and (P_ARTIFICIAL2000 ) (higher normal zero) (next normal low) (neighbor node2 node3) (is-message-at msg3-1 node2) (not (is-message-at msg3-1 node3)) (not (sending node2 node3 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL2000 )) (not (is-message-at msg3-1 node2)) (sending node2 node3 msg3-1) (P_ARTIFICIAL2001 ))
)

(:action send-message_node2_node1_msg3-1_low_zero
:precondition 
(and (P_ARTIFICIAL2001 ) (higher low zero) (next low zero) (neighbor node2 node1) (is-message-at msg3-1 node2) (not (is-message-at msg3-1 node1)) (not (sending node2 node1 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL2001 )) (not (is-message-at msg3-1 node2)) (sending node2 node1 msg3-1))
)

(:action send-message_node2_node3_msg3-1_low_zero
:precondition 
(and (P_ARTIFICIAL2001 ) (higher low zero) (next low zero) (neighbor node2 node3) (is-message-at msg3-1 node2) (not (is-message-at msg3-1 node3)) (not (sending node2 node3 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL2001 )) (not (is-message-at msg3-1 node2)) (sending node2 node3 msg3-1))
)

(:action get-data-from-message_node2_node3_msg3-1
:precondition 
(and (is-message-at msg3-1 node2) (message-data msg3-1 node3))
:effect 
(and (not (message-data msg3-1 node3)) (has-data node2 node3))
)

(:action get-data-from-message_node2_node2_msg3-1
:precondition 
(and (is-message-at msg3-1 node2) (message-data msg3-1 node2))
:effect 
(and (not (message-data msg3-1 node2)) (has-data node2 node2))
)

(:action get-data-from-message_node2_node1_msg3-1
:precondition 
(and (is-message-at msg3-1 node2) (message-data msg3-1 node1))
:effect 
(and (not (message-data msg3-1 node1)) (has-data node2 node1))
)

(:action get-data-from-message_node2_node4_msg3-1
:precondition 
(and (is-message-at msg3-1 node2) (message-data msg3-1 node4))
:effect 
(and (not (message-data msg3-1 node4)) (has-data node2 node4))
)

(:action get-data-from-message_node2_node5_msg3-1
:precondition 
(and (is-message-at msg3-1 node2) (message-data msg3-1 node5))
:effect 
(and (not (message-data msg3-1 node5)) (has-data node2 node5))
)

(:action receive-message_node2_node3_msg4-1
:precondition 
(and (not (is-message-at msg4-1 node2)) (sending node3 node2 msg4-1))
:effect 
(and (not (sending node3 node2 msg4-1)) (is-message-at msg4-1 node2))
)

(:action receive-message_node2_node3_msg5-1
:precondition 
(and (not (is-message-at msg5-1 node2)) (sending node3 node2 msg5-1))
:effect 
(and (not (sending node3 node2 msg5-1)) (is-message-at msg5-1 node2))
)

(:action receive-message_node2_node1_msg3-1
:precondition 
(and (not (is-message-at msg3-1 node2)) (sending node1 node2 msg3-1))
:effect 
(and (not (sending node1 node2 msg3-1)) (is-message-at msg3-1 node2))
)

(:action add-to-message_node2_node2_msg4-1
:precondition 
(and (has-data node2 node2) (is-message-at msg4-1 node2) (not (message-data msg4-1 node2)))
:effect 
(and (not (has-data node2 node2)) (message-data msg4-1 node2))
)

(:action add-to-message_node2_node2_msg5-1
:precondition 
(and (has-data node2 node2) (is-message-at msg5-1 node2) (not (message-data msg5-1 node2)))
:effect 
(and (not (has-data node2 node2)) (message-data msg5-1 node2))
)

(:action add-to-message_node2_node1_msg4-1
:precondition 
(and (has-data node2 node1) (is-message-at msg4-1 node2) (not (message-data msg4-1 node1)))
:effect 
(and (not (has-data node2 node1)) (message-data msg4-1 node1))
)

(:action add-to-message_node2_node1_msg5-1
:precondition 
(and (has-data node2 node1) (is-message-at msg5-1 node2) (not (message-data msg5-1 node1)))
:effect 
(and (not (has-data node2 node1)) (message-data msg5-1 node1))
)

(:action add-to-message_node2_node3_msg4-1
:precondition 
(and (has-data node2 node3) (is-message-at msg4-1 node2) (not (message-data msg4-1 node3)))
:effect 
(and (not (has-data node2 node3)) (message-data msg4-1 node3))
)

(:action add-to-message_node2_node3_msg5-1
:precondition 
(and (has-data node2 node3) (is-message-at msg5-1 node2) (not (message-data msg5-1 node3)))
:effect 
(and (not (has-data node2 node3)) (message-data msg5-1 node3))
)

(:action add-to-message_node2_node4_msg4-1
:precondition 
(and (has-data node2 node4) (is-message-at msg4-1 node2) (not (message-data msg4-1 node4)))
:effect 
(and (not (has-data node2 node4)) (message-data msg4-1 node4))
)

(:action add-to-message_node2_node4_msg5-1
:precondition 
(and (has-data node2 node4) (is-message-at msg5-1 node2) (not (message-data msg5-1 node4)))
:effect 
(and (not (has-data node2 node4)) (message-data msg5-1 node4))
)

(:action add-to-message_node2_node5_msg4-1
:precondition 
(and (has-data node2 node5) (is-message-at msg4-1 node2) (not (message-data msg4-1 node5)))
:effect 
(and (not (has-data node2 node5)) (message-data msg4-1 node5))
)

(:action add-to-message_node2_node5_msg5-1
:precondition 
(and (has-data node2 node5) (is-message-at msg5-1 node2) (not (message-data msg5-1 node5)))
:effect 
(and (not (has-data node2 node5)) (message-data msg5-1 node5))
)

(:action send-message_node2_node1_msg4-1_normal_low
:precondition 
(and (P_ARTIFICIAL2000 ) (higher normal zero) (next normal low) (neighbor node2 node1) (is-message-at msg4-1 node2) (not (is-message-at msg4-1 node1)) (not (sending node2 node1 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL2000 )) (not (is-message-at msg4-1 node2)) (sending node2 node1 msg4-1) (P_ARTIFICIAL2001 ))
)

(:action send-message_node2_node1_msg5-1_normal_low
:precondition 
(and (P_ARTIFICIAL2000 ) (higher normal zero) (next normal low) (neighbor node2 node1) (is-message-at msg5-1 node2) (not (is-message-at msg5-1 node1)) (not (sending node2 node1 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL2000 )) (not (is-message-at msg5-1 node2)) (sending node2 node1 msg5-1) (P_ARTIFICIAL2001 ))
)

(:action send-message_node2_node3_msg4-1_normal_low
:precondition 
(and (P_ARTIFICIAL2000 ) (higher normal zero) (next normal low) (neighbor node2 node3) (is-message-at msg4-1 node2) (not (is-message-at msg4-1 node3)) (not (sending node2 node3 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL2000 )) (not (is-message-at msg4-1 node2)) (sending node2 node3 msg4-1) (P_ARTIFICIAL2001 ))
)

(:action send-message_node2_node3_msg5-1_normal_low
:precondition 
(and (P_ARTIFICIAL2000 ) (higher normal zero) (next normal low) (neighbor node2 node3) (is-message-at msg5-1 node2) (not (is-message-at msg5-1 node3)) (not (sending node2 node3 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL2000 )) (not (is-message-at msg5-1 node2)) (sending node2 node3 msg5-1) (P_ARTIFICIAL2001 ))
)

(:action send-message_node2_node1_msg4-1_low_zero
:precondition 
(and (P_ARTIFICIAL2001 ) (higher low zero) (next low zero) (neighbor node2 node1) (is-message-at msg4-1 node2) (not (is-message-at msg4-1 node1)) (not (sending node2 node1 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL2001 )) (not (is-message-at msg4-1 node2)) (sending node2 node1 msg4-1))
)

(:action send-message_node2_node1_msg5-1_low_zero
:precondition 
(and (P_ARTIFICIAL2001 ) (higher low zero) (next low zero) (neighbor node2 node1) (is-message-at msg5-1 node2) (not (is-message-at msg5-1 node1)) (not (sending node2 node1 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL2001 )) (not (is-message-at msg5-1 node2)) (sending node2 node1 msg5-1))
)

(:action send-message_node2_node3_msg4-1_low_zero
:precondition 
(and (P_ARTIFICIAL2001 ) (higher low zero) (next low zero) (neighbor node2 node3) (is-message-at msg4-1 node2) (not (is-message-at msg4-1 node3)) (not (sending node2 node3 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL2001 )) (not (is-message-at msg4-1 node2)) (sending node2 node3 msg4-1))
)

(:action send-message_node2_node3_msg5-1_low_zero
:precondition 
(and (P_ARTIFICIAL2001 ) (higher low zero) (next low zero) (neighbor node2 node3) (is-message-at msg5-1 node2) (not (is-message-at msg5-1 node3)) (not (sending node2 node3 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL2001 )) (not (is-message-at msg5-1 node2)) (sending node2 node3 msg5-1))
)

(:action get-data-from-message_node2_node4_msg4-1
:precondition 
(and (is-message-at msg4-1 node2) (message-data msg4-1 node4))
:effect 
(and (not (message-data msg4-1 node4)) (has-data node2 node4))
)

(:action get-data-from-message_node2_node3_msg4-1
:precondition 
(and (is-message-at msg4-1 node2) (message-data msg4-1 node3))
:effect 
(and (not (message-data msg4-1 node3)) (has-data node2 node3))
)

(:action get-data-from-message_node2_node2_msg4-1
:precondition 
(and (is-message-at msg4-1 node2) (message-data msg4-1 node2))
:effect 
(and (not (message-data msg4-1 node2)) (has-data node2 node2))
)

(:action get-data-from-message_node2_node1_msg4-1
:precondition 
(and (is-message-at msg4-1 node2) (message-data msg4-1 node1))
:effect 
(and (not (message-data msg4-1 node1)) (has-data node2 node1))
)

(:action get-data-from-message_node2_node5_msg4-1
:precondition 
(and (is-message-at msg4-1 node2) (message-data msg4-1 node5))
:effect 
(and (not (message-data msg4-1 node5)) (has-data node2 node5))
)

(:action get-data-from-message_node2_node5_msg5-1
:precondition 
(and (is-message-at msg5-1 node2) (message-data msg5-1 node5))
:effect 
(and (not (message-data msg5-1 node5)) (has-data node2 node5))
)

(:action get-data-from-message_node2_node3_msg5-1
:precondition 
(and (is-message-at msg5-1 node2) (message-data msg5-1 node3))
:effect 
(and (not (message-data msg5-1 node3)) (has-data node2 node3))
)

(:action get-data-from-message_node2_node2_msg5-1
:precondition 
(and (is-message-at msg5-1 node2) (message-data msg5-1 node2))
:effect 
(and (not (message-data msg5-1 node2)) (has-data node2 node2))
)

(:action get-data-from-message_node2_node1_msg5-1
:precondition 
(and (is-message-at msg5-1 node2) (message-data msg5-1 node1))
:effect 
(and (not (message-data msg5-1 node1)) (has-data node2 node1))
)

(:action get-data-from-message_node2_node4_msg5-1
:precondition 
(and (is-message-at msg5-1 node2) (message-data msg5-1 node4))
:effect 
(and (not (message-data msg5-1 node4)) (has-data node2 node4))
)

(:action receive-message_node2_node1_msg4-1
:precondition 
(and (not (is-message-at msg4-1 node2)) (sending node1 node2 msg4-1))
:effect 
(and (not (sending node1 node2 msg4-1)) (is-message-at msg4-1 node2))
)

(:action receive-message_node2_node1_msg5-1
:precondition 
(and (not (is-message-at msg5-1 node2)) (sending node1 node2 msg5-1))
:effect 
(and (not (sending node1 node2 msg5-1)) (is-message-at msg5-1 node2))
)

(:action generate-data_node3_normal_low
:precondition 
(and (P_ARTIFICIAL3000 ) (higher normal zero) (next normal low))
:effect 
(and (not (P_ARTIFICIAL3000 )) (has-data node3 node3) (P_ARTIFICIAL3001 ))
)

(:action send-message_node3_node2_msg3-1_normal_low
:precondition 
(and (P_ARTIFICIAL3000 ) (higher normal zero) (next normal low) (neighbor node3 node2) (is-message-at msg3-1 node3) (not (is-message-at msg3-1 node2)) (not (sending node3 node2 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL3000 )) (not (is-message-at msg3-1 node3)) (sending node3 node2 msg3-1) (P_ARTIFICIAL3001 ))
)

(:action send-message_node3_node4_msg3-1_normal_low
:precondition 
(and (P_ARTIFICIAL3000 ) (higher normal zero) (next normal low) (neighbor node3 node4) (is-message-at msg3-1 node3) (not (is-message-at msg3-1 node4)) (not (sending node3 node4 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL3000 )) (not (is-message-at msg3-1 node3)) (sending node3 node4 msg3-1) (P_ARTIFICIAL3001 ))
)

(:action send-message_node3_node5_msg3-1_normal_low
:precondition 
(and (P_ARTIFICIAL3000 ) (higher normal zero) (next normal low) (neighbor node3 node5) (is-message-at msg3-1 node3) (not (is-message-at msg3-1 node5)) (not (sending node3 node5 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL3000 )) (not (is-message-at msg3-1 node3)) (sending node3 node5 msg3-1) (P_ARTIFICIAL3001 ))
)

(:action receive-message_node3_node2_msg2-1
:precondition 
(and (not (is-message-at msg2-1 node3)) (sending node2 node3 msg2-1))
:effect 
(and (not (sending node2 node3 msg2-1)) (is-message-at msg2-1 node3))
)

(:action receive-message_node3_node2_msg1-1
:precondition 
(and (not (is-message-at msg1-1 node3)) (sending node2 node3 msg1-1))
:effect 
(and (not (sending node2 node3 msg1-1)) (is-message-at msg1-1 node3))
)

(:action generate-data_node3_low_zero
:precondition 
(and (P_ARTIFICIAL3001 ) (higher low zero) (next low zero))
:effect 
(and (not (P_ARTIFICIAL3001 )) (has-data node3 node3))
)

(:action add-to-message_node3_node3_msg3-1
:precondition 
(and (has-data node3 node3) (is-message-at msg3-1 node3) (not (message-data msg3-1 node3)))
:effect 
(and (not (has-data node3 node3)) (message-data msg3-1 node3))
)

(:action add-to-message_node3_node3_msg2-1
:precondition 
(and (has-data node3 node3) (is-message-at msg2-1 node3) (not (message-data msg2-1 node3)))
:effect 
(and (not (has-data node3 node3)) (message-data msg2-1 node3))
)

(:action add-to-message_node3_node3_msg1-1
:precondition 
(and (has-data node3 node3) (is-message-at msg1-1 node3) (not (message-data msg1-1 node3)))
:effect 
(and (not (has-data node3 node3)) (message-data msg1-1 node3))
)

(:action send-message_node3_node2_msg2-1_normal_low
:precondition 
(and (P_ARTIFICIAL3000 ) (higher normal zero) (next normal low) (neighbor node3 node2) (is-message-at msg2-1 node3) (not (is-message-at msg2-1 node2)) (not (sending node3 node2 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL3000 )) (not (is-message-at msg2-1 node3)) (sending node3 node2 msg2-1) (P_ARTIFICIAL3001 ))
)

(:action send-message_node3_node2_msg1-1_normal_low
:precondition 
(and (P_ARTIFICIAL3000 ) (higher normal zero) (next normal low) (neighbor node3 node2) (is-message-at msg1-1 node3) (not (is-message-at msg1-1 node2)) (not (sending node3 node2 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL3000 )) (not (is-message-at msg1-1 node3)) (sending node3 node2 msg1-1) (P_ARTIFICIAL3001 ))
)

(:action send-message_node3_node4_msg2-1_normal_low
:precondition 
(and (P_ARTIFICIAL3000 ) (higher normal zero) (next normal low) (neighbor node3 node4) (is-message-at msg2-1 node3) (not (is-message-at msg2-1 node4)) (not (sending node3 node4 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL3000 )) (not (is-message-at msg2-1 node3)) (sending node3 node4 msg2-1) (P_ARTIFICIAL3001 ))
)

(:action send-message_node3_node4_msg1-1_normal_low
:precondition 
(and (P_ARTIFICIAL3000 ) (higher normal zero) (next normal low) (neighbor node3 node4) (is-message-at msg1-1 node3) (not (is-message-at msg1-1 node4)) (not (sending node3 node4 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL3000 )) (not (is-message-at msg1-1 node3)) (sending node3 node4 msg1-1) (P_ARTIFICIAL3001 ))
)

(:action send-message_node3_node5_msg2-1_normal_low
:precondition 
(and (P_ARTIFICIAL3000 ) (higher normal zero) (next normal low) (neighbor node3 node5) (is-message-at msg2-1 node3) (not (is-message-at msg2-1 node5)) (not (sending node3 node5 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL3000 )) (not (is-message-at msg2-1 node3)) (sending node3 node5 msg2-1) (P_ARTIFICIAL3001 ))
)

(:action send-message_node3_node5_msg1-1_normal_low
:precondition 
(and (P_ARTIFICIAL3000 ) (higher normal zero) (next normal low) (neighbor node3 node5) (is-message-at msg1-1 node3) (not (is-message-at msg1-1 node5)) (not (sending node3 node5 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL3000 )) (not (is-message-at msg1-1 node3)) (sending node3 node5 msg1-1) (P_ARTIFICIAL3001 ))
)

(:action send-message_node3_node2_msg3-1_low_zero
:precondition 
(and (P_ARTIFICIAL3001 ) (higher low zero) (next low zero) (neighbor node3 node2) (is-message-at msg3-1 node3) (not (is-message-at msg3-1 node2)) (not (sending node3 node2 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL3001 )) (not (is-message-at msg3-1 node3)) (sending node3 node2 msg3-1))
)

(:action send-message_node3_node2_msg2-1_low_zero
:precondition 
(and (P_ARTIFICIAL3001 ) (higher low zero) (next low zero) (neighbor node3 node2) (is-message-at msg2-1 node3) (not (is-message-at msg2-1 node2)) (not (sending node3 node2 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL3001 )) (not (is-message-at msg2-1 node3)) (sending node3 node2 msg2-1))
)

(:action send-message_node3_node2_msg1-1_low_zero
:precondition 
(and (P_ARTIFICIAL3001 ) (higher low zero) (next low zero) (neighbor node3 node2) (is-message-at msg1-1 node3) (not (is-message-at msg1-1 node2)) (not (sending node3 node2 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL3001 )) (not (is-message-at msg1-1 node3)) (sending node3 node2 msg1-1))
)

(:action send-message_node3_node4_msg3-1_low_zero
:precondition 
(and (P_ARTIFICIAL3001 ) (higher low zero) (next low zero) (neighbor node3 node4) (is-message-at msg3-1 node3) (not (is-message-at msg3-1 node4)) (not (sending node3 node4 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL3001 )) (not (is-message-at msg3-1 node3)) (sending node3 node4 msg3-1))
)

(:action send-message_node3_node4_msg2-1_low_zero
:precondition 
(and (P_ARTIFICIAL3001 ) (higher low zero) (next low zero) (neighbor node3 node4) (is-message-at msg2-1 node3) (not (is-message-at msg2-1 node4)) (not (sending node3 node4 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL3001 )) (not (is-message-at msg2-1 node3)) (sending node3 node4 msg2-1))
)

(:action send-message_node3_node4_msg1-1_low_zero
:precondition 
(and (P_ARTIFICIAL3001 ) (higher low zero) (next low zero) (neighbor node3 node4) (is-message-at msg1-1 node3) (not (is-message-at msg1-1 node4)) (not (sending node3 node4 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL3001 )) (not (is-message-at msg1-1 node3)) (sending node3 node4 msg1-1))
)

(:action send-message_node3_node5_msg3-1_low_zero
:precondition 
(and (P_ARTIFICIAL3001 ) (higher low zero) (next low zero) (neighbor node3 node5) (is-message-at msg3-1 node3) (not (is-message-at msg3-1 node5)) (not (sending node3 node5 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL3001 )) (not (is-message-at msg3-1 node3)) (sending node3 node5 msg3-1))
)

(:action send-message_node3_node5_msg2-1_low_zero
:precondition 
(and (P_ARTIFICIAL3001 ) (higher low zero) (next low zero) (neighbor node3 node5) (is-message-at msg2-1 node3) (not (is-message-at msg2-1 node5)) (not (sending node3 node5 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL3001 )) (not (is-message-at msg2-1 node3)) (sending node3 node5 msg2-1))
)

(:action send-message_node3_node5_msg1-1_low_zero
:precondition 
(and (P_ARTIFICIAL3001 ) (higher low zero) (next low zero) (neighbor node3 node5) (is-message-at msg1-1 node3) (not (is-message-at msg1-1 node5)) (not (sending node3 node5 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL3001 )) (not (is-message-at msg1-1 node3)) (sending node3 node5 msg1-1))
)

(:action get-data-from-message_node3_node2_msg2-1
:precondition 
(and (is-message-at msg2-1 node3) (message-data msg2-1 node2))
:effect 
(and (not (message-data msg2-1 node2)) (has-data node3 node2))
)

(:action get-data-from-message_node3_node1_msg2-1
:precondition 
(and (is-message-at msg2-1 node3) (message-data msg2-1 node1))
:effect 
(and (not (message-data msg2-1 node1)) (has-data node3 node1))
)

(:action get-data-from-message_node3_node1_msg1-1
:precondition 
(and (is-message-at msg1-1 node3) (message-data msg1-1 node1))
:effect 
(and (not (message-data msg1-1 node1)) (has-data node3 node1))
)

(:action get-data-from-message_node3_node2_msg1-1
:precondition 
(and (is-message-at msg1-1 node3) (message-data msg1-1 node2))
:effect 
(and (not (message-data msg1-1 node2)) (has-data node3 node2))
)

(:action add-to-message_node3_node2_msg3-1
:precondition 
(and (has-data node3 node2) (is-message-at msg3-1 node3) (not (message-data msg3-1 node2)))
:effect 
(and (not (has-data node3 node2)) (message-data msg3-1 node2))
)

(:action add-to-message_node3_node2_msg2-1
:precondition 
(and (has-data node3 node2) (is-message-at msg2-1 node3) (not (message-data msg2-1 node2)))
:effect 
(and (not (has-data node3 node2)) (message-data msg2-1 node2))
)

(:action add-to-message_node3_node2_msg1-1
:precondition 
(and (has-data node3 node2) (is-message-at msg1-1 node3) (not (message-data msg1-1 node2)))
:effect 
(and (not (has-data node3 node2)) (message-data msg1-1 node2))
)

(:action add-to-message_node3_node1_msg3-1
:precondition 
(and (has-data node3 node1) (is-message-at msg3-1 node3) (not (message-data msg3-1 node1)))
:effect 
(and (not (has-data node3 node1)) (message-data msg3-1 node1))
)

(:action add-to-message_node3_node1_msg2-1
:precondition 
(and (has-data node3 node1) (is-message-at msg2-1 node3) (not (message-data msg2-1 node1)))
:effect 
(and (not (has-data node3 node1)) (message-data msg2-1 node1))
)

(:action add-to-message_node3_node1_msg1-1
:precondition 
(and (has-data node3 node1) (is-message-at msg1-1 node3) (not (message-data msg1-1 node1)))
:effect 
(and (not (has-data node3 node1)) (message-data msg1-1 node1))
)

(:action get-data-from-message_node3_node3_msg3-1
:precondition 
(and (is-message-at msg3-1 node3) (message-data msg3-1 node3))
:effect 
(and (not (message-data msg3-1 node3)) (has-data node3 node3))
)

(:action get-data-from-message_node3_node3_msg2-1
:precondition 
(and (is-message-at msg2-1 node3) (message-data msg2-1 node3))
:effect 
(and (not (message-data msg2-1 node3)) (has-data node3 node3))
)

(:action get-data-from-message_node3_node3_msg1-1
:precondition 
(and (is-message-at msg1-1 node3) (message-data msg1-1 node3))
:effect 
(and (not (message-data msg1-1 node3)) (has-data node3 node3))
)

(:action get-data-from-message_node3_node2_msg3-1
:precondition 
(and (is-message-at msg3-1 node3) (message-data msg3-1 node2))
:effect 
(and (not (message-data msg3-1 node2)) (has-data node3 node2))
)

(:action get-data-from-message_node3_node1_msg3-1
:precondition 
(and (is-message-at msg3-1 node3) (message-data msg3-1 node1))
:effect 
(and (not (message-data msg3-1 node1)) (has-data node3 node1))
)

(:action receive-message_node3_node4_msg4-1
:precondition 
(and (not (is-message-at msg4-1 node3)) (sending node4 node3 msg4-1))
:effect 
(and (not (sending node4 node3 msg4-1)) (is-message-at msg4-1 node3))
)

(:action receive-message_node3_node4_msg3-1
:precondition 
(and (not (is-message-at msg3-1 node3)) (sending node4 node3 msg3-1))
:effect 
(and (not (sending node4 node3 msg3-1)) (is-message-at msg3-1 node3))
)

(:action receive-message_node3_node4_msg2-1
:precondition 
(and (not (is-message-at msg2-1 node3)) (sending node4 node3 msg2-1))
:effect 
(and (not (sending node4 node3 msg2-1)) (is-message-at msg2-1 node3))
)

(:action receive-message_node3_node4_msg1-1
:precondition 
(and (not (is-message-at msg1-1 node3)) (sending node4 node3 msg1-1))
:effect 
(and (not (sending node4 node3 msg1-1)) (is-message-at msg1-1 node3))
)

(:action receive-message_node3_node5_msg5-1
:precondition 
(and (not (is-message-at msg5-1 node3)) (sending node5 node3 msg5-1))
:effect 
(and (not (sending node5 node3 msg5-1)) (is-message-at msg5-1 node3))
)

(:action receive-message_node3_node5_msg3-1
:precondition 
(and (not (is-message-at msg3-1 node3)) (sending node5 node3 msg3-1))
:effect 
(and (not (sending node5 node3 msg3-1)) (is-message-at msg3-1 node3))
)

(:action receive-message_node3_node5_msg2-1
:precondition 
(and (not (is-message-at msg2-1 node3)) (sending node5 node3 msg2-1))
:effect 
(and (not (sending node5 node3 msg2-1)) (is-message-at msg2-1 node3))
)

(:action receive-message_node3_node5_msg1-1
:precondition 
(and (not (is-message-at msg1-1 node3)) (sending node5 node3 msg1-1))
:effect 
(and (not (sending node5 node3 msg1-1)) (is-message-at msg1-1 node3))
)

(:action receive-message_node3_node5_msg4-1
:precondition 
(and (not (is-message-at msg4-1 node3)) (sending node5 node3 msg4-1))
:effect 
(and (not (sending node5 node3 msg4-1)) (is-message-at msg4-1 node3))
)

(:action receive-message_node3_node2_msg3-1
:precondition 
(and (not (is-message-at msg3-1 node3)) (sending node2 node3 msg3-1))
:effect 
(and (not (sending node2 node3 msg3-1)) (is-message-at msg3-1 node3))
)

(:action get-data-from-message_node3_node4_msg3-1
:precondition 
(and (is-message-at msg3-1 node3) (message-data msg3-1 node4))
:effect 
(and (not (message-data msg3-1 node4)) (has-data node3 node4))
)

(:action get-data-from-message_node3_node5_msg3-1
:precondition 
(and (is-message-at msg3-1 node3) (message-data msg3-1 node5))
:effect 
(and (not (message-data msg3-1 node5)) (has-data node3 node5))
)

(:action get-data-from-message_node3_node4_msg2-1
:precondition 
(and (is-message-at msg2-1 node3) (message-data msg2-1 node4))
:effect 
(and (not (message-data msg2-1 node4)) (has-data node3 node4))
)

(:action get-data-from-message_node3_node5_msg2-1
:precondition 
(and (is-message-at msg2-1 node3) (message-data msg2-1 node5))
:effect 
(and (not (message-data msg2-1 node5)) (has-data node3 node5))
)

(:action get-data-from-message_node3_node4_msg1-1
:precondition 
(and (is-message-at msg1-1 node3) (message-data msg1-1 node4))
:effect 
(and (not (message-data msg1-1 node4)) (has-data node3 node4))
)

(:action get-data-from-message_node3_node5_msg1-1
:precondition 
(and (is-message-at msg1-1 node3) (message-data msg1-1 node5))
:effect 
(and (not (message-data msg1-1 node5)) (has-data node3 node5))
)

(:action add-to-message_node3_node3_msg4-1
:precondition 
(and (has-data node3 node3) (is-message-at msg4-1 node3) (not (message-data msg4-1 node3)))
:effect 
(and (not (has-data node3 node3)) (message-data msg4-1 node3))
)

(:action add-to-message_node3_node3_msg5-1
:precondition 
(and (has-data node3 node3) (is-message-at msg5-1 node3) (not (message-data msg5-1 node3)))
:effect 
(and (not (has-data node3 node3)) (message-data msg5-1 node3))
)

(:action add-to-message_node3_node2_msg4-1
:precondition 
(and (has-data node3 node2) (is-message-at msg4-1 node3) (not (message-data msg4-1 node2)))
:effect 
(and (not (has-data node3 node2)) (message-data msg4-1 node2))
)

(:action add-to-message_node3_node2_msg5-1
:precondition 
(and (has-data node3 node2) (is-message-at msg5-1 node3) (not (message-data msg5-1 node2)))
:effect 
(and (not (has-data node3 node2)) (message-data msg5-1 node2))
)

(:action add-to-message_node3_node1_msg4-1
:precondition 
(and (has-data node3 node1) (is-message-at msg4-1 node3) (not (message-data msg4-1 node1)))
:effect 
(and (not (has-data node3 node1)) (message-data msg4-1 node1))
)

(:action add-to-message_node3_node1_msg5-1
:precondition 
(and (has-data node3 node1) (is-message-at msg5-1 node3) (not (message-data msg5-1 node1)))
:effect 
(and (not (has-data node3 node1)) (message-data msg5-1 node1))
)

(:action add-to-message_node3_node4_msg3-1
:precondition 
(and (has-data node3 node4) (is-message-at msg3-1 node3) (not (message-data msg3-1 node4)))
:effect 
(and (not (has-data node3 node4)) (message-data msg3-1 node4))
)

(:action add-to-message_node3_node4_msg2-1
:precondition 
(and (has-data node3 node4) (is-message-at msg2-1 node3) (not (message-data msg2-1 node4)))
:effect 
(and (not (has-data node3 node4)) (message-data msg2-1 node4))
)

(:action add-to-message_node3_node4_msg1-1
:precondition 
(and (has-data node3 node4) (is-message-at msg1-1 node3) (not (message-data msg1-1 node4)))
:effect 
(and (not (has-data node3 node4)) (message-data msg1-1 node4))
)

(:action add-to-message_node3_node4_msg4-1
:precondition 
(and (has-data node3 node4) (is-message-at msg4-1 node3) (not (message-data msg4-1 node4)))
:effect 
(and (not (has-data node3 node4)) (message-data msg4-1 node4))
)

(:action add-to-message_node3_node4_msg5-1
:precondition 
(and (has-data node3 node4) (is-message-at msg5-1 node3) (not (message-data msg5-1 node4)))
:effect 
(and (not (has-data node3 node4)) (message-data msg5-1 node4))
)

(:action add-to-message_node3_node5_msg3-1
:precondition 
(and (has-data node3 node5) (is-message-at msg3-1 node3) (not (message-data msg3-1 node5)))
:effect 
(and (not (has-data node3 node5)) (message-data msg3-1 node5))
)

(:action add-to-message_node3_node5_msg2-1
:precondition 
(and (has-data node3 node5) (is-message-at msg2-1 node3) (not (message-data msg2-1 node5)))
:effect 
(and (not (has-data node3 node5)) (message-data msg2-1 node5))
)

(:action add-to-message_node3_node5_msg1-1
:precondition 
(and (has-data node3 node5) (is-message-at msg1-1 node3) (not (message-data msg1-1 node5)))
:effect 
(and (not (has-data node3 node5)) (message-data msg1-1 node5))
)

(:action add-to-message_node3_node5_msg4-1
:precondition 
(and (has-data node3 node5) (is-message-at msg4-1 node3) (not (message-data msg4-1 node5)))
:effect 
(and (not (has-data node3 node5)) (message-data msg4-1 node5))
)

(:action add-to-message_node3_node5_msg5-1
:precondition 
(and (has-data node3 node5) (is-message-at msg5-1 node3) (not (message-data msg5-1 node5)))
:effect 
(and (not (has-data node3 node5)) (message-data msg5-1 node5))
)

(:action send-message_node3_node2_msg4-1_normal_low
:precondition 
(and (P_ARTIFICIAL3000 ) (higher normal zero) (next normal low) (neighbor node3 node2) (is-message-at msg4-1 node3) (not (is-message-at msg4-1 node2)) (not (sending node3 node2 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL3000 )) (not (is-message-at msg4-1 node3)) (sending node3 node2 msg4-1) (P_ARTIFICIAL3001 ))
)

(:action send-message_node3_node2_msg5-1_normal_low
:precondition 
(and (P_ARTIFICIAL3000 ) (higher normal zero) (next normal low) (neighbor node3 node2) (is-message-at msg5-1 node3) (not (is-message-at msg5-1 node2)) (not (sending node3 node2 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL3000 )) (not (is-message-at msg5-1 node3)) (sending node3 node2 msg5-1) (P_ARTIFICIAL3001 ))
)

(:action send-message_node3_node4_msg4-1_normal_low
:precondition 
(and (P_ARTIFICIAL3000 ) (higher normal zero) (next normal low) (neighbor node3 node4) (is-message-at msg4-1 node3) (not (is-message-at msg4-1 node4)) (not (sending node3 node4 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL3000 )) (not (is-message-at msg4-1 node3)) (sending node3 node4 msg4-1) (P_ARTIFICIAL3001 ))
)

(:action send-message_node3_node4_msg5-1_normal_low
:precondition 
(and (P_ARTIFICIAL3000 ) (higher normal zero) (next normal low) (neighbor node3 node4) (is-message-at msg5-1 node3) (not (is-message-at msg5-1 node4)) (not (sending node3 node4 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL3000 )) (not (is-message-at msg5-1 node3)) (sending node3 node4 msg5-1) (P_ARTIFICIAL3001 ))
)

(:action send-message_node3_node5_msg4-1_normal_low
:precondition 
(and (P_ARTIFICIAL3000 ) (higher normal zero) (next normal low) (neighbor node3 node5) (is-message-at msg4-1 node3) (not (is-message-at msg4-1 node5)) (not (sending node3 node5 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL3000 )) (not (is-message-at msg4-1 node3)) (sending node3 node5 msg4-1) (P_ARTIFICIAL3001 ))
)

(:action send-message_node3_node5_msg5-1_normal_low
:precondition 
(and (P_ARTIFICIAL3000 ) (higher normal zero) (next normal low) (neighbor node3 node5) (is-message-at msg5-1 node3) (not (is-message-at msg5-1 node5)) (not (sending node3 node5 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL3000 )) (not (is-message-at msg5-1 node3)) (sending node3 node5 msg5-1) (P_ARTIFICIAL3001 ))
)

(:action send-message_node3_node2_msg4-1_low_zero
:precondition 
(and (P_ARTIFICIAL3001 ) (higher low zero) (next low zero) (neighbor node3 node2) (is-message-at msg4-1 node3) (not (is-message-at msg4-1 node2)) (not (sending node3 node2 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL3001 )) (not (is-message-at msg4-1 node3)) (sending node3 node2 msg4-1))
)

(:action send-message_node3_node2_msg5-1_low_zero
:precondition 
(and (P_ARTIFICIAL3001 ) (higher low zero) (next low zero) (neighbor node3 node2) (is-message-at msg5-1 node3) (not (is-message-at msg5-1 node2)) (not (sending node3 node2 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL3001 )) (not (is-message-at msg5-1 node3)) (sending node3 node2 msg5-1))
)

(:action send-message_node3_node4_msg4-1_low_zero
:precondition 
(and (P_ARTIFICIAL3001 ) (higher low zero) (next low zero) (neighbor node3 node4) (is-message-at msg4-1 node3) (not (is-message-at msg4-1 node4)) (not (sending node3 node4 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL3001 )) (not (is-message-at msg4-1 node3)) (sending node3 node4 msg4-1))
)

(:action send-message_node3_node4_msg5-1_low_zero
:precondition 
(and (P_ARTIFICIAL3001 ) (higher low zero) (next low zero) (neighbor node3 node4) (is-message-at msg5-1 node3) (not (is-message-at msg5-1 node4)) (not (sending node3 node4 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL3001 )) (not (is-message-at msg5-1 node3)) (sending node3 node4 msg5-1))
)

(:action send-message_node3_node5_msg4-1_low_zero
:precondition 
(and (P_ARTIFICIAL3001 ) (higher low zero) (next low zero) (neighbor node3 node5) (is-message-at msg4-1 node3) (not (is-message-at msg4-1 node5)) (not (sending node3 node5 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL3001 )) (not (is-message-at msg4-1 node3)) (sending node3 node5 msg4-1))
)

(:action send-message_node3_node5_msg5-1_low_zero
:precondition 
(and (P_ARTIFICIAL3001 ) (higher low zero) (next low zero) (neighbor node3 node5) (is-message-at msg5-1 node3) (not (is-message-at msg5-1 node5)) (not (sending node3 node5 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL3001 )) (not (is-message-at msg5-1 node3)) (sending node3 node5 msg5-1))
)

(:action get-data-from-message_node3_node4_msg4-1
:precondition 
(and (is-message-at msg4-1 node3) (message-data msg4-1 node4))
:effect 
(and (not (message-data msg4-1 node4)) (has-data node3 node4))
)

(:action get-data-from-message_node3_node3_msg4-1
:precondition 
(and (is-message-at msg4-1 node3) (message-data msg4-1 node3))
:effect 
(and (not (message-data msg4-1 node3)) (has-data node3 node3))
)

(:action get-data-from-message_node3_node2_msg4-1
:precondition 
(and (is-message-at msg4-1 node3) (message-data msg4-1 node2))
:effect 
(and (not (message-data msg4-1 node2)) (has-data node3 node2))
)

(:action get-data-from-message_node3_node1_msg4-1
:precondition 
(and (is-message-at msg4-1 node3) (message-data msg4-1 node1))
:effect 
(and (not (message-data msg4-1 node1)) (has-data node3 node1))
)

(:action get-data-from-message_node3_node5_msg4-1
:precondition 
(and (is-message-at msg4-1 node3) (message-data msg4-1 node5))
:effect 
(and (not (message-data msg4-1 node5)) (has-data node3 node5))
)

(:action get-data-from-message_node3_node5_msg5-1
:precondition 
(and (is-message-at msg5-1 node3) (message-data msg5-1 node5))
:effect 
(and (not (message-data msg5-1 node5)) (has-data node3 node5))
)

(:action get-data-from-message_node3_node3_msg5-1
:precondition 
(and (is-message-at msg5-1 node3) (message-data msg5-1 node3))
:effect 
(and (not (message-data msg5-1 node3)) (has-data node3 node3))
)

(:action get-data-from-message_node3_node2_msg5-1
:precondition 
(and (is-message-at msg5-1 node3) (message-data msg5-1 node2))
:effect 
(and (not (message-data msg5-1 node2)) (has-data node3 node2))
)

(:action get-data-from-message_node3_node1_msg5-1
:precondition 
(and (is-message-at msg5-1 node3) (message-data msg5-1 node1))
:effect 
(and (not (message-data msg5-1 node1)) (has-data node3 node1))
)

(:action get-data-from-message_node3_node4_msg5-1
:precondition 
(and (is-message-at msg5-1 node3) (message-data msg5-1 node4))
:effect 
(and (not (message-data msg5-1 node4)) (has-data node3 node4))
)

(:action receive-message_node3_node4_msg5-1
:precondition 
(and (not (is-message-at msg5-1 node3)) (sending node4 node3 msg5-1))
:effect 
(and (not (sending node4 node3 msg5-1)) (is-message-at msg5-1 node3))
)

(:action receive-message_node3_node2_msg4-1
:precondition 
(and (not (is-message-at msg4-1 node3)) (sending node2 node3 msg4-1))
:effect 
(and (not (sending node2 node3 msg4-1)) (is-message-at msg4-1 node3))
)

(:action receive-message_node3_node2_msg5-1
:precondition 
(and (not (is-message-at msg5-1 node3)) (sending node2 node3 msg5-1))
:effect 
(and (not (sending node2 node3 msg5-1)) (is-message-at msg5-1 node3))
)

(:action generate-data_node4_normal_low
:precondition 
(and (P_ARTIFICIAL4000 ) (higher normal zero) (next normal low))
:effect 
(and (not (P_ARTIFICIAL4000 )) (has-data node4 node4) (P_ARTIFICIAL4001 ))
)

(:action send-message_node4_node3_msg4-1_normal_low
:precondition 
(and (P_ARTIFICIAL4000 ) (higher normal zero) (next normal low) (neighbor node4 node3) (is-message-at msg4-1 node4) (not (is-message-at msg4-1 node3)) (not (sending node4 node3 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL4000 )) (not (is-message-at msg4-1 node4)) (sending node4 node3 msg4-1) (P_ARTIFICIAL4001 ))
)

(:action send-message_node4_node5_msg4-1_normal_low
:precondition 
(and (P_ARTIFICIAL4000 ) (higher normal zero) (next normal low) (neighbor node4 node5) (is-message-at msg4-1 node4) (not (is-message-at msg4-1 node5)) (not (sending node4 node5 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL4000 )) (not (is-message-at msg4-1 node4)) (sending node4 node5 msg4-1) (P_ARTIFICIAL4001 ))
)

(:action receive-message_node4_node3_msg3-1
:precondition 
(and (not (is-message-at msg3-1 node4)) (sending node3 node4 msg3-1))
:effect 
(and (not (sending node3 node4 msg3-1)) (is-message-at msg3-1 node4))
)

(:action receive-message_node4_node3_msg2-1
:precondition 
(and (not (is-message-at msg2-1 node4)) (sending node3 node4 msg2-1))
:effect 
(and (not (sending node3 node4 msg2-1)) (is-message-at msg2-1 node4))
)

(:action receive-message_node4_node3_msg1-1
:precondition 
(and (not (is-message-at msg1-1 node4)) (sending node3 node4 msg1-1))
:effect 
(and (not (sending node3 node4 msg1-1)) (is-message-at msg1-1 node4))
)

(:action generate-data_node4_low_zero
:precondition 
(and (P_ARTIFICIAL4001 ) (higher low zero) (next low zero))
:effect 
(and (not (P_ARTIFICIAL4001 )) (has-data node4 node4))
)

(:action add-to-message_node4_node4_msg4-1
:precondition 
(and (has-data node4 node4) (is-message-at msg4-1 node4) (not (message-data msg4-1 node4)))
:effect 
(and (not (has-data node4 node4)) (message-data msg4-1 node4))
)

(:action add-to-message_node4_node4_msg3-1
:precondition 
(and (has-data node4 node4) (is-message-at msg3-1 node4) (not (message-data msg3-1 node4)))
:effect 
(and (not (has-data node4 node4)) (message-data msg3-1 node4))
)

(:action add-to-message_node4_node4_msg2-1
:precondition 
(and (has-data node4 node4) (is-message-at msg2-1 node4) (not (message-data msg2-1 node4)))
:effect 
(and (not (has-data node4 node4)) (message-data msg2-1 node4))
)

(:action add-to-message_node4_node4_msg1-1
:precondition 
(and (has-data node4 node4) (is-message-at msg1-1 node4) (not (message-data msg1-1 node4)))
:effect 
(and (not (has-data node4 node4)) (message-data msg1-1 node4))
)

(:action send-message_node4_node3_msg3-1_normal_low
:precondition 
(and (P_ARTIFICIAL4000 ) (higher normal zero) (next normal low) (neighbor node4 node3) (is-message-at msg3-1 node4) (not (is-message-at msg3-1 node3)) (not (sending node4 node3 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL4000 )) (not (is-message-at msg3-1 node4)) (sending node4 node3 msg3-1) (P_ARTIFICIAL4001 ))
)

(:action send-message_node4_node3_msg2-1_normal_low
:precondition 
(and (P_ARTIFICIAL4000 ) (higher normal zero) (next normal low) (neighbor node4 node3) (is-message-at msg2-1 node4) (not (is-message-at msg2-1 node3)) (not (sending node4 node3 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL4000 )) (not (is-message-at msg2-1 node4)) (sending node4 node3 msg2-1) (P_ARTIFICIAL4001 ))
)

(:action send-message_node4_node3_msg1-1_normal_low
:precondition 
(and (P_ARTIFICIAL4000 ) (higher normal zero) (next normal low) (neighbor node4 node3) (is-message-at msg1-1 node4) (not (is-message-at msg1-1 node3)) (not (sending node4 node3 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL4000 )) (not (is-message-at msg1-1 node4)) (sending node4 node3 msg1-1) (P_ARTIFICIAL4001 ))
)

(:action send-message_node4_node5_msg3-1_normal_low
:precondition 
(and (P_ARTIFICIAL4000 ) (higher normal zero) (next normal low) (neighbor node4 node5) (is-message-at msg3-1 node4) (not (is-message-at msg3-1 node5)) (not (sending node4 node5 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL4000 )) (not (is-message-at msg3-1 node4)) (sending node4 node5 msg3-1) (P_ARTIFICIAL4001 ))
)

(:action send-message_node4_node5_msg2-1_normal_low
:precondition 
(and (P_ARTIFICIAL4000 ) (higher normal zero) (next normal low) (neighbor node4 node5) (is-message-at msg2-1 node4) (not (is-message-at msg2-1 node5)) (not (sending node4 node5 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL4000 )) (not (is-message-at msg2-1 node4)) (sending node4 node5 msg2-1) (P_ARTIFICIAL4001 ))
)

(:action send-message_node4_node5_msg1-1_normal_low
:precondition 
(and (P_ARTIFICIAL4000 ) (higher normal zero) (next normal low) (neighbor node4 node5) (is-message-at msg1-1 node4) (not (is-message-at msg1-1 node5)) (not (sending node4 node5 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL4000 )) (not (is-message-at msg1-1 node4)) (sending node4 node5 msg1-1) (P_ARTIFICIAL4001 ))
)

(:action send-message_node4_node3_msg4-1_low_zero
:precondition 
(and (P_ARTIFICIAL4001 ) (higher low zero) (next low zero) (neighbor node4 node3) (is-message-at msg4-1 node4) (not (is-message-at msg4-1 node3)) (not (sending node4 node3 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL4001 )) (not (is-message-at msg4-1 node4)) (sending node4 node3 msg4-1))
)

(:action send-message_node4_node3_msg3-1_low_zero
:precondition 
(and (P_ARTIFICIAL4001 ) (higher low zero) (next low zero) (neighbor node4 node3) (is-message-at msg3-1 node4) (not (is-message-at msg3-1 node3)) (not (sending node4 node3 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL4001 )) (not (is-message-at msg3-1 node4)) (sending node4 node3 msg3-1))
)

(:action send-message_node4_node3_msg2-1_low_zero
:precondition 
(and (P_ARTIFICIAL4001 ) (higher low zero) (next low zero) (neighbor node4 node3) (is-message-at msg2-1 node4) (not (is-message-at msg2-1 node3)) (not (sending node4 node3 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL4001 )) (not (is-message-at msg2-1 node4)) (sending node4 node3 msg2-1))
)

(:action send-message_node4_node3_msg1-1_low_zero
:precondition 
(and (P_ARTIFICIAL4001 ) (higher low zero) (next low zero) (neighbor node4 node3) (is-message-at msg1-1 node4) (not (is-message-at msg1-1 node3)) (not (sending node4 node3 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL4001 )) (not (is-message-at msg1-1 node4)) (sending node4 node3 msg1-1))
)

(:action send-message_node4_node5_msg4-1_low_zero
:precondition 
(and (P_ARTIFICIAL4001 ) (higher low zero) (next low zero) (neighbor node4 node5) (is-message-at msg4-1 node4) (not (is-message-at msg4-1 node5)) (not (sending node4 node5 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL4001 )) (not (is-message-at msg4-1 node4)) (sending node4 node5 msg4-1))
)

(:action send-message_node4_node5_msg3-1_low_zero
:precondition 
(and (P_ARTIFICIAL4001 ) (higher low zero) (next low zero) (neighbor node4 node5) (is-message-at msg3-1 node4) (not (is-message-at msg3-1 node5)) (not (sending node4 node5 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL4001 )) (not (is-message-at msg3-1 node4)) (sending node4 node5 msg3-1))
)

(:action send-message_node4_node5_msg2-1_low_zero
:precondition 
(and (P_ARTIFICIAL4001 ) (higher low zero) (next low zero) (neighbor node4 node5) (is-message-at msg2-1 node4) (not (is-message-at msg2-1 node5)) (not (sending node4 node5 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL4001 )) (not (is-message-at msg2-1 node4)) (sending node4 node5 msg2-1))
)

(:action send-message_node4_node5_msg1-1_low_zero
:precondition 
(and (P_ARTIFICIAL4001 ) (higher low zero) (next low zero) (neighbor node4 node5) (is-message-at msg1-1 node4) (not (is-message-at msg1-1 node5)) (not (sending node4 node5 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL4001 )) (not (is-message-at msg1-1 node4)) (sending node4 node5 msg1-1))
)

(:action get-data-from-message_node4_node3_msg3-1
:precondition 
(and (is-message-at msg3-1 node4) (message-data msg3-1 node3))
:effect 
(and (not (message-data msg3-1 node3)) (has-data node4 node3))
)

(:action get-data-from-message_node4_node2_msg3-1
:precondition 
(and (is-message-at msg3-1 node4) (message-data msg3-1 node2))
:effect 
(and (not (message-data msg3-1 node2)) (has-data node4 node2))
)

(:action get-data-from-message_node4_node1_msg3-1
:precondition 
(and (is-message-at msg3-1 node4) (message-data msg3-1 node1))
:effect 
(and (not (message-data msg3-1 node1)) (has-data node4 node1))
)

(:action get-data-from-message_node4_node2_msg2-1
:precondition 
(and (is-message-at msg2-1 node4) (message-data msg2-1 node2))
:effect 
(and (not (message-data msg2-1 node2)) (has-data node4 node2))
)

(:action get-data-from-message_node4_node1_msg2-1
:precondition 
(and (is-message-at msg2-1 node4) (message-data msg2-1 node1))
:effect 
(and (not (message-data msg2-1 node1)) (has-data node4 node1))
)

(:action get-data-from-message_node4_node3_msg2-1
:precondition 
(and (is-message-at msg2-1 node4) (message-data msg2-1 node3))
:effect 
(and (not (message-data msg2-1 node3)) (has-data node4 node3))
)

(:action get-data-from-message_node4_node1_msg1-1
:precondition 
(and (is-message-at msg1-1 node4) (message-data msg1-1 node1))
:effect 
(and (not (message-data msg1-1 node1)) (has-data node4 node1))
)

(:action get-data-from-message_node4_node2_msg1-1
:precondition 
(and (is-message-at msg1-1 node4) (message-data msg1-1 node2))
:effect 
(and (not (message-data msg1-1 node2)) (has-data node4 node2))
)

(:action get-data-from-message_node4_node3_msg1-1
:precondition 
(and (is-message-at msg1-1 node4) (message-data msg1-1 node3))
:effect 
(and (not (message-data msg1-1 node3)) (has-data node4 node3))
)

(:action add-to-message_node4_node3_msg4-1
:precondition 
(and (has-data node4 node3) (is-message-at msg4-1 node4) (not (message-data msg4-1 node3)))
:effect 
(and (not (has-data node4 node3)) (message-data msg4-1 node3))
)

(:action add-to-message_node4_node3_msg3-1
:precondition 
(and (has-data node4 node3) (is-message-at msg3-1 node4) (not (message-data msg3-1 node3)))
:effect 
(and (not (has-data node4 node3)) (message-data msg3-1 node3))
)

(:action add-to-message_node4_node3_msg2-1
:precondition 
(and (has-data node4 node3) (is-message-at msg2-1 node4) (not (message-data msg2-1 node3)))
:effect 
(and (not (has-data node4 node3)) (message-data msg2-1 node3))
)

(:action add-to-message_node4_node3_msg1-1
:precondition 
(and (has-data node4 node3) (is-message-at msg1-1 node4) (not (message-data msg1-1 node3)))
:effect 
(and (not (has-data node4 node3)) (message-data msg1-1 node3))
)

(:action add-to-message_node4_node2_msg4-1
:precondition 
(and (has-data node4 node2) (is-message-at msg4-1 node4) (not (message-data msg4-1 node2)))
:effect 
(and (not (has-data node4 node2)) (message-data msg4-1 node2))
)

(:action add-to-message_node4_node2_msg3-1
:precondition 
(and (has-data node4 node2) (is-message-at msg3-1 node4) (not (message-data msg3-1 node2)))
:effect 
(and (not (has-data node4 node2)) (message-data msg3-1 node2))
)

(:action add-to-message_node4_node2_msg2-1
:precondition 
(and (has-data node4 node2) (is-message-at msg2-1 node4) (not (message-data msg2-1 node2)))
:effect 
(and (not (has-data node4 node2)) (message-data msg2-1 node2))
)

(:action add-to-message_node4_node2_msg1-1
:precondition 
(and (has-data node4 node2) (is-message-at msg1-1 node4) (not (message-data msg1-1 node2)))
:effect 
(and (not (has-data node4 node2)) (message-data msg1-1 node2))
)

(:action add-to-message_node4_node1_msg4-1
:precondition 
(and (has-data node4 node1) (is-message-at msg4-1 node4) (not (message-data msg4-1 node1)))
:effect 
(and (not (has-data node4 node1)) (message-data msg4-1 node1))
)

(:action add-to-message_node4_node1_msg3-1
:precondition 
(and (has-data node4 node1) (is-message-at msg3-1 node4) (not (message-data msg3-1 node1)))
:effect 
(and (not (has-data node4 node1)) (message-data msg3-1 node1))
)

(:action add-to-message_node4_node1_msg2-1
:precondition 
(and (has-data node4 node1) (is-message-at msg2-1 node4) (not (message-data msg2-1 node1)))
:effect 
(and (not (has-data node4 node1)) (message-data msg2-1 node1))
)

(:action add-to-message_node4_node1_msg1-1
:precondition 
(and (has-data node4 node1) (is-message-at msg1-1 node4) (not (message-data msg1-1 node1)))
:effect 
(and (not (has-data node4 node1)) (message-data msg1-1 node1))
)

(:action get-data-from-message_node4_node4_msg4-1
:precondition 
(and (is-message-at msg4-1 node4) (message-data msg4-1 node4))
:effect 
(and (not (message-data msg4-1 node4)) (has-data node4 node4))
)

(:action get-data-from-message_node4_node4_msg3-1
:precondition 
(and (is-message-at msg3-1 node4) (message-data msg3-1 node4))
:effect 
(and (not (message-data msg3-1 node4)) (has-data node4 node4))
)

(:action get-data-from-message_node4_node4_msg2-1
:precondition 
(and (is-message-at msg2-1 node4) (message-data msg2-1 node4))
:effect 
(and (not (message-data msg2-1 node4)) (has-data node4 node4))
)

(:action get-data-from-message_node4_node4_msg1-1
:precondition 
(and (is-message-at msg1-1 node4) (message-data msg1-1 node4))
:effect 
(and (not (message-data msg1-1 node4)) (has-data node4 node4))
)

(:action get-data-from-message_node4_node3_msg4-1
:precondition 
(and (is-message-at msg4-1 node4) (message-data msg4-1 node3))
:effect 
(and (not (message-data msg4-1 node3)) (has-data node4 node3))
)

(:action get-data-from-message_node4_node2_msg4-1
:precondition 
(and (is-message-at msg4-1 node4) (message-data msg4-1 node2))
:effect 
(and (not (message-data msg4-1 node2)) (has-data node4 node2))
)

(:action get-data-from-message_node4_node1_msg4-1
:precondition 
(and (is-message-at msg4-1 node4) (message-data msg4-1 node1))
:effect 
(and (not (message-data msg4-1 node1)) (has-data node4 node1))
)

(:action receive-message_node4_node5_msg5-1
:precondition 
(and (not (is-message-at msg5-1 node4)) (sending node5 node4 msg5-1))
:effect 
(and (not (sending node5 node4 msg5-1)) (is-message-at msg5-1 node4))
)

(:action receive-message_node4_node5_msg3-1
:precondition 
(and (not (is-message-at msg3-1 node4)) (sending node5 node4 msg3-1))
:effect 
(and (not (sending node5 node4 msg3-1)) (is-message-at msg3-1 node4))
)

(:action receive-message_node4_node5_msg2-1
:precondition 
(and (not (is-message-at msg2-1 node4)) (sending node5 node4 msg2-1))
:effect 
(and (not (sending node5 node4 msg2-1)) (is-message-at msg2-1 node4))
)

(:action receive-message_node4_node5_msg1-1
:precondition 
(and (not (is-message-at msg1-1 node4)) (sending node5 node4 msg1-1))
:effect 
(and (not (sending node5 node4 msg1-1)) (is-message-at msg1-1 node4))
)

(:action receive-message_node4_node5_msg4-1
:precondition 
(and (not (is-message-at msg4-1 node4)) (sending node5 node4 msg4-1))
:effect 
(and (not (sending node5 node4 msg4-1)) (is-message-at msg4-1 node4))
)

(:action receive-message_node4_node3_msg4-1
:precondition 
(and (not (is-message-at msg4-1 node4)) (sending node3 node4 msg4-1))
:effect 
(and (not (sending node3 node4 msg4-1)) (is-message-at msg4-1 node4))
)

(:action receive-message_node4_node3_msg5-1
:precondition 
(and (not (is-message-at msg5-1 node4)) (sending node3 node4 msg5-1))
:effect 
(and (not (sending node3 node4 msg5-1)) (is-message-at msg5-1 node4))
)

(:action get-data-from-message_node4_node5_msg4-1
:precondition 
(and (is-message-at msg4-1 node4) (message-data msg4-1 node5))
:effect 
(and (not (message-data msg4-1 node5)) (has-data node4 node5))
)

(:action get-data-from-message_node4_node5_msg3-1
:precondition 
(and (is-message-at msg3-1 node4) (message-data msg3-1 node5))
:effect 
(and (not (message-data msg3-1 node5)) (has-data node4 node5))
)

(:action get-data-from-message_node4_node5_msg2-1
:precondition 
(and (is-message-at msg2-1 node4) (message-data msg2-1 node5))
:effect 
(and (not (message-data msg2-1 node5)) (has-data node4 node5))
)

(:action get-data-from-message_node4_node5_msg1-1
:precondition 
(and (is-message-at msg1-1 node4) (message-data msg1-1 node5))
:effect 
(and (not (message-data msg1-1 node5)) (has-data node4 node5))
)

(:action add-to-message_node4_node4_msg5-1
:precondition 
(and (has-data node4 node4) (is-message-at msg5-1 node4) (not (message-data msg5-1 node4)))
:effect 
(and (not (has-data node4 node4)) (message-data msg5-1 node4))
)

(:action add-to-message_node4_node3_msg5-1
:precondition 
(and (has-data node4 node3) (is-message-at msg5-1 node4) (not (message-data msg5-1 node3)))
:effect 
(and (not (has-data node4 node3)) (message-data msg5-1 node3))
)

(:action add-to-message_node4_node2_msg5-1
:precondition 
(and (has-data node4 node2) (is-message-at msg5-1 node4) (not (message-data msg5-1 node2)))
:effect 
(and (not (has-data node4 node2)) (message-data msg5-1 node2))
)

(:action add-to-message_node4_node1_msg5-1
:precondition 
(and (has-data node4 node1) (is-message-at msg5-1 node4) (not (message-data msg5-1 node1)))
:effect 
(and (not (has-data node4 node1)) (message-data msg5-1 node1))
)

(:action add-to-message_node4_node5_msg4-1
:precondition 
(and (has-data node4 node5) (is-message-at msg4-1 node4) (not (message-data msg4-1 node5)))
:effect 
(and (not (has-data node4 node5)) (message-data msg4-1 node5))
)

(:action add-to-message_node4_node5_msg3-1
:precondition 
(and (has-data node4 node5) (is-message-at msg3-1 node4) (not (message-data msg3-1 node5)))
:effect 
(and (not (has-data node4 node5)) (message-data msg3-1 node5))
)

(:action add-to-message_node4_node5_msg2-1
:precondition 
(and (has-data node4 node5) (is-message-at msg2-1 node4) (not (message-data msg2-1 node5)))
:effect 
(and (not (has-data node4 node5)) (message-data msg2-1 node5))
)

(:action add-to-message_node4_node5_msg1-1
:precondition 
(and (has-data node4 node5) (is-message-at msg1-1 node4) (not (message-data msg1-1 node5)))
:effect 
(and (not (has-data node4 node5)) (message-data msg1-1 node5))
)

(:action add-to-message_node4_node5_msg5-1
:precondition 
(and (has-data node4 node5) (is-message-at msg5-1 node4) (not (message-data msg5-1 node5)))
:effect 
(and (not (has-data node4 node5)) (message-data msg5-1 node5))
)

(:action send-message_node4_node3_msg5-1_normal_low
:precondition 
(and (P_ARTIFICIAL4000 ) (higher normal zero) (next normal low) (neighbor node4 node3) (is-message-at msg5-1 node4) (not (is-message-at msg5-1 node3)) (not (sending node4 node3 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL4000 )) (not (is-message-at msg5-1 node4)) (sending node4 node3 msg5-1) (P_ARTIFICIAL4001 ))
)

(:action send-message_node4_node5_msg5-1_normal_low
:precondition 
(and (P_ARTIFICIAL4000 ) (higher normal zero) (next normal low) (neighbor node4 node5) (is-message-at msg5-1 node4) (not (is-message-at msg5-1 node5)) (not (sending node4 node5 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL4000 )) (not (is-message-at msg5-1 node4)) (sending node4 node5 msg5-1) (P_ARTIFICIAL4001 ))
)

(:action send-message_node4_node3_msg5-1_low_zero
:precondition 
(and (P_ARTIFICIAL4001 ) (higher low zero) (next low zero) (neighbor node4 node3) (is-message-at msg5-1 node4) (not (is-message-at msg5-1 node3)) (not (sending node4 node3 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL4001 )) (not (is-message-at msg5-1 node4)) (sending node4 node3 msg5-1))
)

(:action send-message_node4_node5_msg5-1_low_zero
:precondition 
(and (P_ARTIFICIAL4001 ) (higher low zero) (next low zero) (neighbor node4 node5) (is-message-at msg5-1 node4) (not (is-message-at msg5-1 node5)) (not (sending node4 node5 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL4001 )) (not (is-message-at msg5-1 node4)) (sending node4 node5 msg5-1))
)

(:action get-data-from-message_node4_node5_msg5-1
:precondition 
(and (is-message-at msg5-1 node4) (message-data msg5-1 node5))
:effect 
(and (not (message-data msg5-1 node5)) (has-data node4 node5))
)

(:action get-data-from-message_node4_node3_msg5-1
:precondition 
(and (is-message-at msg5-1 node4) (message-data msg5-1 node3))
:effect 
(and (not (message-data msg5-1 node3)) (has-data node4 node3))
)

(:action get-data-from-message_node4_node2_msg5-1
:precondition 
(and (is-message-at msg5-1 node4) (message-data msg5-1 node2))
:effect 
(and (not (message-data msg5-1 node2)) (has-data node4 node2))
)

(:action get-data-from-message_node4_node1_msg5-1
:precondition 
(and (is-message-at msg5-1 node4) (message-data msg5-1 node1))
:effect 
(and (not (message-data msg5-1 node1)) (has-data node4 node1))
)

(:action get-data-from-message_node4_node4_msg5-1
:precondition 
(and (is-message-at msg5-1 node4) (message-data msg5-1 node4))
:effect 
(and (not (message-data msg5-1 node4)) (has-data node4 node4))
)

(:action send-message_node5_node3_msg5-1_high_normal
:precondition 
(and (P_ARTIFICIAL5000 ) (neighbor node5 node3) (is-message-at msg5-1 node5) (not (is-message-at msg5-1 node3)) (not (sending node5 node3 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL5000 )) (not (is-message-at msg5-1 node5)) (sending node5 node3 msg5-1) (P_ARTIFICIAL5001 ))
)

(:action send-message_node5_node4_msg5-1_high_normal
:precondition 
(and (P_ARTIFICIAL5000 ) (neighbor node5 node4) (is-message-at msg5-1 node5) (not (is-message-at msg5-1 node4)) (not (sending node5 node4 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL5000 )) (not (is-message-at msg5-1 node5)) (sending node5 node4 msg5-1) (P_ARTIFICIAL5001 ))
)

(:action send-message_node5_base_msg5-1_high_normal
:precondition 
(and (P_ARTIFICIAL5000 ) (neighbor node5 base) (is-message-at msg5-1 node5) (not (is-message-at msg5-1 base)) (not (sending node5 base msg5-1)))
:effect 
(and (not (P_ARTIFICIAL5000 )) (not (is-message-at msg5-1 node5)) (sending node5 base msg5-1) (P_ARTIFICIAL5001 ))
)

(:action receive-message_node5_node3_msg3-1
:precondition 
(and (not (is-message-at msg3-1 node5)) (sending node3 node5 msg3-1))
:effect 
(and (not (sending node3 node5 msg3-1)) (is-message-at msg3-1 node5))
)

(:action receive-message_node5_node3_msg2-1
:precondition 
(and (not (is-message-at msg2-1 node5)) (sending node3 node5 msg2-1))
:effect 
(and (not (sending node3 node5 msg2-1)) (is-message-at msg2-1 node5))
)

(:action receive-message_node5_node3_msg1-1
:precondition 
(and (not (is-message-at msg1-1 node5)) (sending node3 node5 msg1-1))
:effect 
(and (not (sending node3 node5 msg1-1)) (is-message-at msg1-1 node5))
)

(:action receive-message_node5_node4_msg4-1
:precondition 
(and (not (is-message-at msg4-1 node5)) (sending node4 node5 msg4-1))
:effect 
(and (not (sending node4 node5 msg4-1)) (is-message-at msg4-1 node5))
)

(:action receive-message_node5_node4_msg3-1
:precondition 
(and (not (is-message-at msg3-1 node5)) (sending node4 node5 msg3-1))
:effect 
(and (not (sending node4 node5 msg3-1)) (is-message-at msg3-1 node5))
)

(:action receive-message_node5_node4_msg2-1
:precondition 
(and (not (is-message-at msg2-1 node5)) (sending node4 node5 msg2-1))
:effect 
(and (not (sending node4 node5 msg2-1)) (is-message-at msg2-1 node5))
)

(:action receive-message_node5_node4_msg1-1
:precondition 
(and (not (is-message-at msg1-1 node5)) (sending node4 node5 msg1-1))
:effect 
(and (not (sending node4 node5 msg1-1)) (is-message-at msg1-1 node5))
)

(:action generate-data_node5_normal_low
:precondition 
(and (P_ARTIFICIAL5001 ) (higher normal zero) (next normal low))
:effect 
(and (not (P_ARTIFICIAL5001 )) (P_ARTIFICIAL5002 ) (P_ARTIFICIAL5003 ))
)

(:action add-to-message_node5_node5_msg5-1
:precondition 
(and (P_ARTIFICIAL5002 ) (is-message-at msg5-1 node5) (not (message-data msg5-1 node5)))
:effect 
(and (not (P_ARTIFICIAL5002 )) (message-data msg5-1 node5))
)

(:action add-to-message_node5_node5_msg3-1
:precondition 
(and (P_ARTIFICIAL5002 ) (is-message-at msg3-1 node5) (not (message-data msg3-1 node5)))
:effect 
(and (not (P_ARTIFICIAL5002 )) (message-data msg3-1 node5))
)

(:action add-to-message_node5_node5_msg2-1
:precondition 
(and (P_ARTIFICIAL5002 ) (is-message-at msg2-1 node5) (not (message-data msg2-1 node5)))
:effect 
(and (not (P_ARTIFICIAL5002 )) (message-data msg2-1 node5))
)

(:action add-to-message_node5_node5_msg1-1
:precondition 
(and (P_ARTIFICIAL5002 ) (is-message-at msg1-1 node5) (not (message-data msg1-1 node5)))
:effect 
(and (not (P_ARTIFICIAL5002 )) (message-data msg1-1 node5))
)

(:action add-to-message_node5_node5_msg4-1
:precondition 
(and (P_ARTIFICIAL5002 ) (is-message-at msg4-1 node5) (not (message-data msg4-1 node5)))
:effect 
(and (not (P_ARTIFICIAL5002 )) (message-data msg4-1 node5))
)

(:action send-message_node5_node3_msg3-1_high_normal
:precondition 
(and (P_ARTIFICIAL5000 ) (neighbor node5 node3) (is-message-at msg3-1 node5) (not (is-message-at msg3-1 node3)) (not (sending node5 node3 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL5000 )) (not (is-message-at msg3-1 node5)) (sending node5 node3 msg3-1) (P_ARTIFICIAL5001 ))
)

(:action send-message_node5_node3_msg2-1_high_normal
:precondition 
(and (P_ARTIFICIAL5000 ) (neighbor node5 node3) (is-message-at msg2-1 node5) (not (is-message-at msg2-1 node3)) (not (sending node5 node3 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL5000 )) (not (is-message-at msg2-1 node5)) (sending node5 node3 msg2-1) (P_ARTIFICIAL5001 ))
)

(:action send-message_node5_node3_msg1-1_high_normal
:precondition 
(and (P_ARTIFICIAL5000 ) (neighbor node5 node3) (is-message-at msg1-1 node5) (not (is-message-at msg1-1 node3)) (not (sending node5 node3 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL5000 )) (not (is-message-at msg1-1 node5)) (sending node5 node3 msg1-1) (P_ARTIFICIAL5001 ))
)

(:action send-message_node5_node3_msg4-1_high_normal
:precondition 
(and (P_ARTIFICIAL5000 ) (neighbor node5 node3) (is-message-at msg4-1 node5) (not (is-message-at msg4-1 node3)) (not (sending node5 node3 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL5000 )) (not (is-message-at msg4-1 node5)) (sending node5 node3 msg4-1) (P_ARTIFICIAL5001 ))
)

(:action send-message_node5_node4_msg3-1_high_normal
:precondition 
(and (P_ARTIFICIAL5000 ) (neighbor node5 node4) (is-message-at msg3-1 node5) (not (is-message-at msg3-1 node4)) (not (sending node5 node4 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL5000 )) (not (is-message-at msg3-1 node5)) (sending node5 node4 msg3-1) (P_ARTIFICIAL5001 ))
)

(:action send-message_node5_node4_msg2-1_high_normal
:precondition 
(and (P_ARTIFICIAL5000 ) (neighbor node5 node4) (is-message-at msg2-1 node5) (not (is-message-at msg2-1 node4)) (not (sending node5 node4 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL5000 )) (not (is-message-at msg2-1 node5)) (sending node5 node4 msg2-1) (P_ARTIFICIAL5001 ))
)

(:action send-message_node5_node4_msg1-1_high_normal
:precondition 
(and (P_ARTIFICIAL5000 ) (neighbor node5 node4) (is-message-at msg1-1 node5) (not (is-message-at msg1-1 node4)) (not (sending node5 node4 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL5000 )) (not (is-message-at msg1-1 node5)) (sending node5 node4 msg1-1) (P_ARTIFICIAL5001 ))
)

(:action send-message_node5_node4_msg4-1_high_normal
:precondition 
(and (P_ARTIFICIAL5000 ) (neighbor node5 node4) (is-message-at msg4-1 node5) (not (is-message-at msg4-1 node4)) (not (sending node5 node4 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL5000 )) (not (is-message-at msg4-1 node5)) (sending node5 node4 msg4-1) (P_ARTIFICIAL5001 ))
)

(:action send-message_node5_base_msg3-1_high_normal
:precondition 
(and (P_ARTIFICIAL5000 ) (neighbor node5 base) (is-message-at msg3-1 node5) (not (is-message-at msg3-1 base)) (not (sending node5 base msg3-1)))
:effect 
(and (not (P_ARTIFICIAL5000 )) (not (is-message-at msg3-1 node5)) (sending node5 base msg3-1) (P_ARTIFICIAL5001 ))
)

(:action send-message_node5_base_msg2-1_high_normal
:precondition 
(and (P_ARTIFICIAL5000 ) (neighbor node5 base) (is-message-at msg2-1 node5) (not (is-message-at msg2-1 base)) (not (sending node5 base msg2-1)))
:effect 
(and (not (P_ARTIFICIAL5000 )) (not (is-message-at msg2-1 node5)) (sending node5 base msg2-1) (P_ARTIFICIAL5001 ))
)

(:action send-message_node5_base_msg1-1_high_normal
:precondition 
(and (P_ARTIFICIAL5000 ) (neighbor node5 base) (is-message-at msg1-1 node5) (not (is-message-at msg1-1 base)) (not (sending node5 base msg1-1)))
:effect 
(and (not (P_ARTIFICIAL5000 )) (not (is-message-at msg1-1 node5)) (sending node5 base msg1-1) (P_ARTIFICIAL5001 ))
)

(:action send-message_node5_base_msg4-1_high_normal
:precondition 
(and (P_ARTIFICIAL5000 ) (neighbor node5 base) (is-message-at msg4-1 node5) (not (is-message-at msg4-1 base)) (not (sending node5 base msg4-1)))
:effect 
(and (not (P_ARTIFICIAL5000 )) (not (is-message-at msg4-1 node5)) (sending node5 base msg4-1) (P_ARTIFICIAL5001 ))
)

(:action send-message_node5_node3_msg5-1_normal_low
:precondition 
(and (P_ARTIFICIAL5001 ) (higher normal zero) (next normal low) (neighbor node5 node3) (is-message-at msg5-1 node5) (not (is-message-at msg5-1 node3)) (not (sending node5 node3 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL5001 )) (not (is-message-at msg5-1 node5)) (sending node5 node3 msg5-1) (P_ARTIFICIAL5003 ))
)

(:action send-message_node5_node3_msg3-1_normal_low
:precondition 
(and (P_ARTIFICIAL5001 ) (higher normal zero) (next normal low) (neighbor node5 node3) (is-message-at msg3-1 node5) (not (is-message-at msg3-1 node3)) (not (sending node5 node3 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL5001 )) (not (is-message-at msg3-1 node5)) (sending node5 node3 msg3-1) (P_ARTIFICIAL5003 ))
)

(:action send-message_node5_node3_msg2-1_normal_low
:precondition 
(and (P_ARTIFICIAL5001 ) (higher normal zero) (next normal low) (neighbor node5 node3) (is-message-at msg2-1 node5) (not (is-message-at msg2-1 node3)) (not (sending node5 node3 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL5001 )) (not (is-message-at msg2-1 node5)) (sending node5 node3 msg2-1) (P_ARTIFICIAL5003 ))
)

(:action send-message_node5_node3_msg1-1_normal_low
:precondition 
(and (P_ARTIFICIAL5001 ) (higher normal zero) (next normal low) (neighbor node5 node3) (is-message-at msg1-1 node5) (not (is-message-at msg1-1 node3)) (not (sending node5 node3 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL5001 )) (not (is-message-at msg1-1 node5)) (sending node5 node3 msg1-1) (P_ARTIFICIAL5003 ))
)

(:action send-message_node5_node3_msg4-1_normal_low
:precondition 
(and (P_ARTIFICIAL5001 ) (higher normal zero) (next normal low) (neighbor node5 node3) (is-message-at msg4-1 node5) (not (is-message-at msg4-1 node3)) (not (sending node5 node3 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL5001 )) (not (is-message-at msg4-1 node5)) (sending node5 node3 msg4-1) (P_ARTIFICIAL5003 ))
)

(:action send-message_node5_node4_msg5-1_normal_low
:precondition 
(and (P_ARTIFICIAL5001 ) (higher normal zero) (next normal low) (neighbor node5 node4) (is-message-at msg5-1 node5) (not (is-message-at msg5-1 node4)) (not (sending node5 node4 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL5001 )) (not (is-message-at msg5-1 node5)) (sending node5 node4 msg5-1) (P_ARTIFICIAL5003 ))
)

(:action send-message_node5_node4_msg3-1_normal_low
:precondition 
(and (P_ARTIFICIAL5001 ) (higher normal zero) (next normal low) (neighbor node5 node4) (is-message-at msg3-1 node5) (not (is-message-at msg3-1 node4)) (not (sending node5 node4 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL5001 )) (not (is-message-at msg3-1 node5)) (sending node5 node4 msg3-1) (P_ARTIFICIAL5003 ))
)

(:action send-message_node5_node4_msg2-1_normal_low
:precondition 
(and (P_ARTIFICIAL5001 ) (higher normal zero) (next normal low) (neighbor node5 node4) (is-message-at msg2-1 node5) (not (is-message-at msg2-1 node4)) (not (sending node5 node4 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL5001 )) (not (is-message-at msg2-1 node5)) (sending node5 node4 msg2-1) (P_ARTIFICIAL5003 ))
)

(:action send-message_node5_node4_msg1-1_normal_low
:precondition 
(and (P_ARTIFICIAL5001 ) (higher normal zero) (next normal low) (neighbor node5 node4) (is-message-at msg1-1 node5) (not (is-message-at msg1-1 node4)) (not (sending node5 node4 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL5001 )) (not (is-message-at msg1-1 node5)) (sending node5 node4 msg1-1) (P_ARTIFICIAL5003 ))
)

(:action send-message_node5_node4_msg4-1_normal_low
:precondition 
(and (P_ARTIFICIAL5001 ) (higher normal zero) (next normal low) (neighbor node5 node4) (is-message-at msg4-1 node5) (not (is-message-at msg4-1 node4)) (not (sending node5 node4 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL5001 )) (not (is-message-at msg4-1 node5)) (sending node5 node4 msg4-1) (P_ARTIFICIAL5003 ))
)

(:action send-message_node5_base_msg5-1_normal_low
:precondition 
(and (P_ARTIFICIAL5001 ) (higher normal zero) (next normal low) (neighbor node5 base) (is-message-at msg5-1 node5) (not (is-message-at msg5-1 base)) (not (sending node5 base msg5-1)))
:effect 
(and (not (P_ARTIFICIAL5001 )) (not (is-message-at msg5-1 node5)) (sending node5 base msg5-1) (P_ARTIFICIAL5003 ))
)

(:action send-message_node5_base_msg3-1_normal_low
:precondition 
(and (P_ARTIFICIAL5001 ) (higher normal zero) (next normal low) (neighbor node5 base) (is-message-at msg3-1 node5) (not (is-message-at msg3-1 base)) (not (sending node5 base msg3-1)))
:effect 
(and (not (P_ARTIFICIAL5001 )) (not (is-message-at msg3-1 node5)) (sending node5 base msg3-1) (P_ARTIFICIAL5003 ))
)

(:action send-message_node5_base_msg2-1_normal_low
:precondition 
(and (P_ARTIFICIAL5001 ) (higher normal zero) (next normal low) (neighbor node5 base) (is-message-at msg2-1 node5) (not (is-message-at msg2-1 base)) (not (sending node5 base msg2-1)))
:effect 
(and (not (P_ARTIFICIAL5001 )) (not (is-message-at msg2-1 node5)) (sending node5 base msg2-1) (P_ARTIFICIAL5003 ))
)

(:action send-message_node5_base_msg1-1_normal_low
:precondition 
(and (P_ARTIFICIAL5001 ) (higher normal zero) (next normal low) (neighbor node5 base) (is-message-at msg1-1 node5) (not (is-message-at msg1-1 base)) (not (sending node5 base msg1-1)))
:effect 
(and (not (P_ARTIFICIAL5001 )) (not (is-message-at msg1-1 node5)) (sending node5 base msg1-1) (P_ARTIFICIAL5003 ))
)

(:action send-message_node5_base_msg4-1_normal_low
:precondition 
(and (P_ARTIFICIAL5001 ) (higher normal zero) (next normal low) (neighbor node5 base) (is-message-at msg4-1 node5) (not (is-message-at msg4-1 base)) (not (sending node5 base msg4-1)))
:effect 
(and (not (P_ARTIFICIAL5001 )) (not (is-message-at msg4-1 node5)) (sending node5 base msg4-1) (P_ARTIFICIAL5003 ))
)

(:action get-data-from-message_node5_node3_msg3-1
:precondition 
(and (is-message-at msg3-1 node5) (message-data msg3-1 node3))
:effect 
(and (not (message-data msg3-1 node3)) (has-data node5 node3))
)

(:action get-data-from-message_node5_node2_msg3-1
:precondition 
(and (is-message-at msg3-1 node5) (message-data msg3-1 node2))
:effect 
(and (not (message-data msg3-1 node2)) (has-data node5 node2))
)

(:action get-data-from-message_node5_node1_msg3-1
:precondition 
(and (is-message-at msg3-1 node5) (message-data msg3-1 node1))
:effect 
(and (not (message-data msg3-1 node1)) (has-data node5 node1))
)

(:action get-data-from-message_node5_node4_msg3-1
:precondition 
(and (is-message-at msg3-1 node5) (message-data msg3-1 node4))
:effect 
(and (not (message-data msg3-1 node4)) (has-data node5 node4))
)

(:action get-data-from-message_node5_node2_msg2-1
:precondition 
(and (is-message-at msg2-1 node5) (message-data msg2-1 node2))
:effect 
(and (not (message-data msg2-1 node2)) (has-data node5 node2))
)

(:action get-data-from-message_node5_node1_msg2-1
:precondition 
(and (is-message-at msg2-1 node5) (message-data msg2-1 node1))
:effect 
(and (not (message-data msg2-1 node1)) (has-data node5 node1))
)

(:action get-data-from-message_node5_node3_msg2-1
:precondition 
(and (is-message-at msg2-1 node5) (message-data msg2-1 node3))
:effect 
(and (not (message-data msg2-1 node3)) (has-data node5 node3))
)

(:action get-data-from-message_node5_node4_msg2-1
:precondition 
(and (is-message-at msg2-1 node5) (message-data msg2-1 node4))
:effect 
(and (not (message-data msg2-1 node4)) (has-data node5 node4))
)

(:action get-data-from-message_node5_node1_msg1-1
:precondition 
(and (is-message-at msg1-1 node5) (message-data msg1-1 node1))
:effect 
(and (not (message-data msg1-1 node1)) (has-data node5 node1))
)

(:action get-data-from-message_node5_node2_msg1-1
:precondition 
(and (is-message-at msg1-1 node5) (message-data msg1-1 node2))
:effect 
(and (not (message-data msg1-1 node2)) (has-data node5 node2))
)

(:action get-data-from-message_node5_node3_msg1-1
:precondition 
(and (is-message-at msg1-1 node5) (message-data msg1-1 node3))
:effect 
(and (not (message-data msg1-1 node3)) (has-data node5 node3))
)

(:action get-data-from-message_node5_node4_msg1-1
:precondition 
(and (is-message-at msg1-1 node5) (message-data msg1-1 node4))
:effect 
(and (not (message-data msg1-1 node4)) (has-data node5 node4))
)

(:action get-data-from-message_node5_node4_msg4-1
:precondition 
(and (is-message-at msg4-1 node5) (message-data msg4-1 node4))
:effect 
(and (not (message-data msg4-1 node4)) (has-data node5 node4))
)

(:action get-data-from-message_node5_node3_msg4-1
:precondition 
(and (is-message-at msg4-1 node5) (message-data msg4-1 node3))
:effect 
(and (not (message-data msg4-1 node3)) (has-data node5 node3))
)

(:action get-data-from-message_node5_node2_msg4-1
:precondition 
(and (is-message-at msg4-1 node5) (message-data msg4-1 node2))
:effect 
(and (not (message-data msg4-1 node2)) (has-data node5 node2))
)

(:action get-data-from-message_node5_node1_msg4-1
:precondition 
(and (is-message-at msg4-1 node5) (message-data msg4-1 node1))
:effect 
(and (not (message-data msg4-1 node1)) (has-data node5 node1))
)

(:action generate-data_node5_low_zero
:precondition 
(and (P_ARTIFICIAL5003 ) (higher low zero) (next low zero))
:effect 
(and (not (P_ARTIFICIAL5003 )) (P_ARTIFICIAL5002 ))
)

(:action add-to-message_node5_node3_msg5-1
:precondition 
(and (has-data node5 node3) (is-message-at msg5-1 node5) (not (message-data msg5-1 node3)))
:effect 
(and (not (has-data node5 node3)) (message-data msg5-1 node3))
)

(:action add-to-message_node5_node3_msg3-1
:precondition 
(and (has-data node5 node3) (is-message-at msg3-1 node5) (not (message-data msg3-1 node3)))
:effect 
(and (not (has-data node5 node3)) (message-data msg3-1 node3))
)

(:action add-to-message_node5_node3_msg2-1
:precondition 
(and (has-data node5 node3) (is-message-at msg2-1 node5) (not (message-data msg2-1 node3)))
:effect 
(and (not (has-data node5 node3)) (message-data msg2-1 node3))
)

(:action add-to-message_node5_node3_msg1-1
:precondition 
(and (has-data node5 node3) (is-message-at msg1-1 node5) (not (message-data msg1-1 node3)))
:effect 
(and (not (has-data node5 node3)) (message-data msg1-1 node3))
)

(:action add-to-message_node5_node3_msg4-1
:precondition 
(and (has-data node5 node3) (is-message-at msg4-1 node5) (not (message-data msg4-1 node3)))
:effect 
(and (not (has-data node5 node3)) (message-data msg4-1 node3))
)

(:action add-to-message_node5_node2_msg5-1
:precondition 
(and (has-data node5 node2) (is-message-at msg5-1 node5) (not (message-data msg5-1 node2)))
:effect 
(and (not (has-data node5 node2)) (message-data msg5-1 node2))
)

(:action add-to-message_node5_node2_msg3-1
:precondition 
(and (has-data node5 node2) (is-message-at msg3-1 node5) (not (message-data msg3-1 node2)))
:effect 
(and (not (has-data node5 node2)) (message-data msg3-1 node2))
)

(:action add-to-message_node5_node2_msg2-1
:precondition 
(and (has-data node5 node2) (is-message-at msg2-1 node5) (not (message-data msg2-1 node2)))
:effect 
(and (not (has-data node5 node2)) (message-data msg2-1 node2))
)

(:action add-to-message_node5_node2_msg1-1
:precondition 
(and (has-data node5 node2) (is-message-at msg1-1 node5) (not (message-data msg1-1 node2)))
:effect 
(and (not (has-data node5 node2)) (message-data msg1-1 node2))
)

(:action add-to-message_node5_node2_msg4-1
:precondition 
(and (has-data node5 node2) (is-message-at msg4-1 node5) (not (message-data msg4-1 node2)))
:effect 
(and (not (has-data node5 node2)) (message-data msg4-1 node2))
)

(:action add-to-message_node5_node1_msg5-1
:precondition 
(and (has-data node5 node1) (is-message-at msg5-1 node5) (not (message-data msg5-1 node1)))
:effect 
(and (not (has-data node5 node1)) (message-data msg5-1 node1))
)

(:action add-to-message_node5_node1_msg3-1
:precondition 
(and (has-data node5 node1) (is-message-at msg3-1 node5) (not (message-data msg3-1 node1)))
:effect 
(and (not (has-data node5 node1)) (message-data msg3-1 node1))
)

(:action add-to-message_node5_node1_msg2-1
:precondition 
(and (has-data node5 node1) (is-message-at msg2-1 node5) (not (message-data msg2-1 node1)))
:effect 
(and (not (has-data node5 node1)) (message-data msg2-1 node1))
)

(:action add-to-message_node5_node1_msg1-1
:precondition 
(and (has-data node5 node1) (is-message-at msg1-1 node5) (not (message-data msg1-1 node1)))
:effect 
(and (not (has-data node5 node1)) (message-data msg1-1 node1))
)

(:action add-to-message_node5_node1_msg4-1
:precondition 
(and (has-data node5 node1) (is-message-at msg4-1 node5) (not (message-data msg4-1 node1)))
:effect 
(and (not (has-data node5 node1)) (message-data msg4-1 node1))
)

(:action add-to-message_node5_node4_msg5-1
:precondition 
(and (has-data node5 node4) (is-message-at msg5-1 node5) (not (message-data msg5-1 node4)))
:effect 
(and (not (has-data node5 node4)) (message-data msg5-1 node4))
)

(:action add-to-message_node5_node4_msg3-1
:precondition 
(and (has-data node5 node4) (is-message-at msg3-1 node5) (not (message-data msg3-1 node4)))
:effect 
(and (not (has-data node5 node4)) (message-data msg3-1 node4))
)

(:action add-to-message_node5_node4_msg2-1
:precondition 
(and (has-data node5 node4) (is-message-at msg2-1 node5) (not (message-data msg2-1 node4)))
:effect 
(and (not (has-data node5 node4)) (message-data msg2-1 node4))
)

(:action add-to-message_node5_node4_msg1-1
:precondition 
(and (has-data node5 node4) (is-message-at msg1-1 node5) (not (message-data msg1-1 node4)))
:effect 
(and (not (has-data node5 node4)) (message-data msg1-1 node4))
)

(:action add-to-message_node5_node4_msg4-1
:precondition 
(and (has-data node5 node4) (is-message-at msg4-1 node5) (not (message-data msg4-1 node4)))
:effect 
(and (not (has-data node5 node4)) (message-data msg4-1 node4))
)

(:action send-message_node5_node3_msg5-1_low_zero
:precondition 
(and (P_ARTIFICIAL5003 ) (higher low zero) (next low zero) (neighbor node5 node3) (is-message-at msg5-1 node5) (not (is-message-at msg5-1 node3)) (not (sending node5 node3 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL5003 )) (not (is-message-at msg5-1 node5)) (sending node5 node3 msg5-1))
)

(:action send-message_node5_node3_msg3-1_low_zero
:precondition 
(and (P_ARTIFICIAL5003 ) (higher low zero) (next low zero) (neighbor node5 node3) (is-message-at msg3-1 node5) (not (is-message-at msg3-1 node3)) (not (sending node5 node3 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL5003 )) (not (is-message-at msg3-1 node5)) (sending node5 node3 msg3-1))
)

(:action send-message_node5_node3_msg2-1_low_zero
:precondition 
(and (P_ARTIFICIAL5003 ) (higher low zero) (next low zero) (neighbor node5 node3) (is-message-at msg2-1 node5) (not (is-message-at msg2-1 node3)) (not (sending node5 node3 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL5003 )) (not (is-message-at msg2-1 node5)) (sending node5 node3 msg2-1))
)

(:action send-message_node5_node3_msg1-1_low_zero
:precondition 
(and (P_ARTIFICIAL5003 ) (higher low zero) (next low zero) (neighbor node5 node3) (is-message-at msg1-1 node5) (not (is-message-at msg1-1 node3)) (not (sending node5 node3 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL5003 )) (not (is-message-at msg1-1 node5)) (sending node5 node3 msg1-1))
)

(:action send-message_node5_node3_msg4-1_low_zero
:precondition 
(and (P_ARTIFICIAL5003 ) (higher low zero) (next low zero) (neighbor node5 node3) (is-message-at msg4-1 node5) (not (is-message-at msg4-1 node3)) (not (sending node5 node3 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL5003 )) (not (is-message-at msg4-1 node5)) (sending node5 node3 msg4-1))
)

(:action send-message_node5_node4_msg5-1_low_zero
:precondition 
(and (P_ARTIFICIAL5003 ) (higher low zero) (next low zero) (neighbor node5 node4) (is-message-at msg5-1 node5) (not (is-message-at msg5-1 node4)) (not (sending node5 node4 msg5-1)))
:effect 
(and (not (P_ARTIFICIAL5003 )) (not (is-message-at msg5-1 node5)) (sending node5 node4 msg5-1))
)

(:action send-message_node5_node4_msg3-1_low_zero
:precondition 
(and (P_ARTIFICIAL5003 ) (higher low zero) (next low zero) (neighbor node5 node4) (is-message-at msg3-1 node5) (not (is-message-at msg3-1 node4)) (not (sending node5 node4 msg3-1)))
:effect 
(and (not (P_ARTIFICIAL5003 )) (not (is-message-at msg3-1 node5)) (sending node5 node4 msg3-1))
)

(:action send-message_node5_node4_msg2-1_low_zero
:precondition 
(and (P_ARTIFICIAL5003 ) (higher low zero) (next low zero) (neighbor node5 node4) (is-message-at msg2-1 node5) (not (is-message-at msg2-1 node4)) (not (sending node5 node4 msg2-1)))
:effect 
(and (not (P_ARTIFICIAL5003 )) (not (is-message-at msg2-1 node5)) (sending node5 node4 msg2-1))
)

(:action send-message_node5_node4_msg1-1_low_zero
:precondition 
(and (P_ARTIFICIAL5003 ) (higher low zero) (next low zero) (neighbor node5 node4) (is-message-at msg1-1 node5) (not (is-message-at msg1-1 node4)) (not (sending node5 node4 msg1-1)))
:effect 
(and (not (P_ARTIFICIAL5003 )) (not (is-message-at msg1-1 node5)) (sending node5 node4 msg1-1))
)

(:action send-message_node5_node4_msg4-1_low_zero
:precondition 
(and (P_ARTIFICIAL5003 ) (higher low zero) (next low zero) (neighbor node5 node4) (is-message-at msg4-1 node5) (not (is-message-at msg4-1 node4)) (not (sending node5 node4 msg4-1)))
:effect 
(and (not (P_ARTIFICIAL5003 )) (not (is-message-at msg4-1 node5)) (sending node5 node4 msg4-1))
)

(:action send-message_node5_base_msg5-1_low_zero
:precondition 
(and (P_ARTIFICIAL5003 ) (higher low zero) (next low zero) (neighbor node5 base) (is-message-at msg5-1 node5) (not (is-message-at msg5-1 base)) (not (sending node5 base msg5-1)))
:effect 
(and (not (P_ARTIFICIAL5003 )) (not (is-message-at msg5-1 node5)) (sending node5 base msg5-1))
)

(:action send-message_node5_base_msg3-1_low_zero
:precondition 
(and (P_ARTIFICIAL5003 ) (higher low zero) (next low zero) (neighbor node5 base) (is-message-at msg3-1 node5) (not (is-message-at msg3-1 base)) (not (sending node5 base msg3-1)))
:effect 
(and (not (P_ARTIFICIAL5003 )) (not (is-message-at msg3-1 node5)) (sending node5 base msg3-1))
)

(:action send-message_node5_base_msg2-1_low_zero
:precondition 
(and (P_ARTIFICIAL5003 ) (higher low zero) (next low zero) (neighbor node5 base) (is-message-at msg2-1 node5) (not (is-message-at msg2-1 base)) (not (sending node5 base msg2-1)))
:effect 
(and (not (P_ARTIFICIAL5003 )) (not (is-message-at msg2-1 node5)) (sending node5 base msg2-1))
)

(:action send-message_node5_base_msg1-1_low_zero
:precondition 
(and (P_ARTIFICIAL5003 ) (higher low zero) (next low zero) (neighbor node5 base) (is-message-at msg1-1 node5) (not (is-message-at msg1-1 base)) (not (sending node5 base msg1-1)))
:effect 
(and (not (P_ARTIFICIAL5003 )) (not (is-message-at msg1-1 node5)) (sending node5 base msg1-1))
)

(:action send-message_node5_base_msg4-1_low_zero
:precondition 
(and (P_ARTIFICIAL5003 ) (higher low zero) (next low zero) (neighbor node5 base) (is-message-at msg4-1 node5) (not (is-message-at msg4-1 base)) (not (sending node5 base msg4-1)))
:effect 
(and (not (P_ARTIFICIAL5003 )) (not (is-message-at msg4-1 node5)) (sending node5 base msg4-1))
)

(:action get-data-from-message_node5_node5_msg5-1
:precondition 
(and (is-message-at msg5-1 node5) (message-data msg5-1 node5))
:effect 
(and (not (message-data msg5-1 node5)) (P_ARTIFICIAL5002 ))
)

(:action get-data-from-message_node5_node5_msg3-1
:precondition 
(and (is-message-at msg3-1 node5) (message-data msg3-1 node5))
:effect 
(and (not (message-data msg3-1 node5)) (P_ARTIFICIAL5002 ))
)

(:action get-data-from-message_node5_node5_msg2-1
:precondition 
(and (is-message-at msg2-1 node5) (message-data msg2-1 node5))
:effect 
(and (not (message-data msg2-1 node5)) (P_ARTIFICIAL5002 ))
)

(:action get-data-from-message_node5_node5_msg1-1
:precondition 
(and (is-message-at msg1-1 node5) (message-data msg1-1 node5))
:effect 
(and (not (message-data msg1-1 node5)) (P_ARTIFICIAL5002 ))
)

(:action get-data-from-message_node5_node5_msg4-1
:precondition 
(and (is-message-at msg4-1 node5) (message-data msg4-1 node5))
:effect 
(and (not (message-data msg4-1 node5)) (P_ARTIFICIAL5002 ))
)

(:action get-data-from-message_node5_node3_msg5-1
:precondition 
(and (is-message-at msg5-1 node5) (message-data msg5-1 node3))
:effect 
(and (not (message-data msg5-1 node3)) (has-data node5 node3))
)

(:action get-data-from-message_node5_node2_msg5-1
:precondition 
(and (is-message-at msg5-1 node5) (message-data msg5-1 node2))
:effect 
(and (not (message-data msg5-1 node2)) (has-data node5 node2))
)

(:action get-data-from-message_node5_node1_msg5-1
:precondition 
(and (is-message-at msg5-1 node5) (message-data msg5-1 node1))
:effect 
(and (not (message-data msg5-1 node1)) (has-data node5 node1))
)

(:action get-data-from-message_node5_node4_msg5-1
:precondition 
(and (is-message-at msg5-1 node5) (message-data msg5-1 node4))
:effect 
(and (not (message-data msg5-1 node4)) (has-data node5 node4))
)

(:action receive-message_node5_node3_msg4-1
:precondition 
(and (not (is-message-at msg4-1 node5)) (sending node3 node5 msg4-1))
:effect 
(and (not (sending node3 node5 msg4-1)) (is-message-at msg4-1 node5))
)

(:action receive-message_node5_node3_msg5-1
:precondition 
(and (not (is-message-at msg5-1 node5)) (sending node3 node5 msg5-1))
:effect 
(and (not (sending node3 node5 msg5-1)) (is-message-at msg5-1 node5))
)

(:action receive-message_node5_node4_msg5-1
:precondition 
(and (not (is-message-at msg5-1 node5)) (sending node4 node5 msg5-1))
:effect 
(and (not (sending node4 node5 msg5-1)) (is-message-at msg5-1 node5))
)

)
