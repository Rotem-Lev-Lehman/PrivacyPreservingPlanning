(define (problem PublicProblem)
(:domain PublicDomain)
(:init
	(P_ARTIFICIALStartState )
	(visible waypoint1 waypoint0)
	(visible waypoint0 waypoint1)
	(visible waypoint1 waypoint8)
	(visible waypoint8 waypoint1)
	(visible waypoint1 waypoint11)
	(visible waypoint11 waypoint1)
	(visible waypoint1 waypoint14)
	(visible waypoint14 waypoint1)
	(visible waypoint2 waypoint6)
	(visible waypoint6 waypoint2)
	(visible waypoint2 waypoint9)
	(visible waypoint9 waypoint2)
	(visible waypoint3 waypoint0)
	(visible waypoint0 waypoint3)
	(visible waypoint3 waypoint2)
	(visible waypoint2 waypoint3)
	(visible waypoint3 waypoint6)
	(visible waypoint6 waypoint3)
	(visible waypoint3 waypoint7)
	(visible waypoint7 waypoint3)
	(visible waypoint3 waypoint11)
	(visible waypoint11 waypoint3)
	(visible waypoint3 waypoint13)
	(visible waypoint13 waypoint3)
	(visible waypoint4 waypoint1)
	(visible waypoint1 waypoint4)
	(visible waypoint4 waypoint2)
	(visible waypoint2 waypoint4)
	(visible waypoint4 waypoint10)
	(visible waypoint10 waypoint4)
	(visible waypoint4 waypoint14)
	(visible waypoint14 waypoint4)
	(visible waypoint5 waypoint1)
	(visible waypoint1 waypoint5)
	(visible waypoint5 waypoint2)
	(visible waypoint2 waypoint5)
	(visible waypoint5 waypoint3)
	(visible waypoint3 waypoint5)
	(visible waypoint5 waypoint8)
	(visible waypoint8 waypoint5)
	(visible waypoint5 waypoint14)
	(visible waypoint14 waypoint5)
	(visible waypoint6 waypoint0)
	(visible waypoint0 waypoint6)
	(visible waypoint6 waypoint4)
	(visible waypoint4 waypoint6)
	(visible waypoint6 waypoint5)
	(visible waypoint5 waypoint6)
	(visible waypoint6 waypoint7)
	(visible waypoint7 waypoint6)
	(visible waypoint6 waypoint10)
	(visible waypoint10 waypoint6)
	(visible waypoint6 waypoint12)
	(visible waypoint12 waypoint6)
	(visible waypoint6 waypoint13)
	(visible waypoint13 waypoint6)
	(visible waypoint7 waypoint8)
	(visible waypoint8 waypoint7)
	(visible waypoint7 waypoint9)
	(visible waypoint9 waypoint7)
	(visible waypoint8 waypoint2)
	(visible waypoint2 waypoint8)
	(visible waypoint8 waypoint3)
	(visible waypoint3 waypoint8)
	(visible waypoint8 waypoint10)
	(visible waypoint10 waypoint8)
	(visible waypoint9 waypoint8)
	(visible waypoint8 waypoint9)
	(visible waypoint10 waypoint0)
	(visible waypoint0 waypoint10)
	(visible waypoint10 waypoint3)
	(visible waypoint3 waypoint10)
	(visible waypoint11 waypoint2)
	(visible waypoint2 waypoint11)
	(visible waypoint11 waypoint4)
	(visible waypoint4 waypoint11)
	(visible waypoint11 waypoint8)
	(visible waypoint8 waypoint11)
	(visible waypoint11 waypoint9)
	(visible waypoint9 waypoint11)
	(visible waypoint11 waypoint10)
	(visible waypoint10 waypoint11)
	(visible waypoint12 waypoint0)
	(visible waypoint0 waypoint12)
	(visible waypoint12 waypoint1)
	(visible waypoint1 waypoint12)
	(visible waypoint12 waypoint5)
	(visible waypoint5 waypoint12)
	(visible waypoint12 waypoint7)
	(visible waypoint7 waypoint12)
	(visible waypoint13 waypoint0)
	(visible waypoint0 waypoint13)
	(visible waypoint13 waypoint5)
	(visible waypoint5 waypoint13)
	(visible waypoint13 waypoint14)
	(visible waypoint14 waypoint13)
	(visible waypoint14 waypoint2)
	(visible waypoint2 waypoint14)
	(visible waypoint14 waypoint3)
	(visible waypoint3 waypoint14)
	(visible waypoint14 waypoint9)
	(visible waypoint9 waypoint14)
	(visible waypoint14 waypoint10)
	(visible waypoint10 waypoint14)
	(at_lander general waypoint13)
	(calibration_target camera0 objective2)
	(supports camera0 high_res)
	(supports camera0 low_res)
	(calibration_target camera1 objective2)
	(supports camera1 colour)
	(calibration_target camera2 objective1)
	(supports camera2 colour)
	(supports camera2 high_res)
	(calibration_target camera3 objective5)
	(supports camera3 colour)
	(calibration_target camera4 objective3)
	(supports camera4 colour)
	(supports camera4 high_res)
	(supports camera4 low_res)
	(calibration_target camera5 objective0)
	(supports camera5 low_res)
	(calibration_target camera6 objective5)
	(supports camera6 colour)
	(supports camera6 high_res)
	(visible_from objective0 waypoint0)
	(visible_from objective0 waypoint1)
	(visible_from objective0 waypoint2)
	(visible_from objective0 waypoint3)
	(visible_from objective1 waypoint0)
	(visible_from objective1 waypoint1)
	(visible_from objective2 waypoint0)
	(visible_from objective2 waypoint1)
	(visible_from objective2 waypoint2)
	(visible_from objective2 waypoint3)
	(visible_from objective2 waypoint4)
	(visible_from objective2 waypoint5)
	(visible_from objective2 waypoint6)
	(visible_from objective2 waypoint7)
	(visible_from objective2 waypoint8)
	(visible_from objective2 waypoint9)
	(visible_from objective2 waypoint10)
	(visible_from objective2 waypoint11)
	(visible_from objective2 waypoint12)
	(visible_from objective2 waypoint13)
	(visible_from objective2 waypoint14)
	(visible_from objective3 waypoint0)
	(visible_from objective3 waypoint1)
	(visible_from objective3 waypoint2)
	(visible_from objective3 waypoint3)
	(visible_from objective3 waypoint4)
	(visible_from objective3 waypoint5)
	(visible_from objective4 waypoint0)
	(visible_from objective4 waypoint1)
	(visible_from objective4 waypoint2)
	(visible_from objective4 waypoint3)
	(visible_from objective4 waypoint4)
	(visible_from objective4 waypoint5)
	(visible_from objective4 waypoint6)
	(visible_from objective4 waypoint7)
	(visible_from objective4 waypoint8)
	(visible_from objective4 waypoint9)
	(visible_from objective4 waypoint10)
	(visible_from objective4 waypoint11)
	(visible_from objective4 waypoint12)
	(visible_from objective5 waypoint0)
	(visible_from objective5 waypoint1)
	(can-use-init-action rotemagent0)
	(can-use-init-action rotemagent1)
	(can-use-init-action rotemagent2)
	(can-use-init-action rotemagent3)
	(can-use-init-action rotemagent4)
	(can-use-init-action rotemagent5)
)
(:goal 
(and (communicated_rock_data waypoint3) (communicated_rock_data waypoint5) (communicated_rock_data waypoint12) (communicated_rock_data waypoint9) (communicated_image_data objective2 low_res) (communicated_image_data objective2 colour) (communicated_image_data objective3 colour) (communicated_image_data objective5 colour) (communicated_image_data objective4 colour) (communicated_soil_data waypoint14) (communicated_soil_data waypoint5) (communicated_soil_data waypoint2) (communicated_soil_data waypoint3)))
)
