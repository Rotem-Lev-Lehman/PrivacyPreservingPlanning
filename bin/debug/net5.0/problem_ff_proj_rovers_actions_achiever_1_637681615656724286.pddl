(define (problem PublicProblem)
(:domain PublicDomain)
(:init
	(P_ARTIFICIALStartState )
	(visible waypoint0 waypoint6)
	(visible waypoint6 waypoint0)
	(visible waypoint1 waypoint0)
	(visible waypoint0 waypoint1)
	(visible waypoint1 waypoint2)
	(visible waypoint2 waypoint1)
	(visible waypoint1 waypoint5)
	(visible waypoint5 waypoint1)
	(visible waypoint2 waypoint0)
	(visible waypoint0 waypoint2)
	(visible waypoint2 waypoint4)
	(visible waypoint4 waypoint2)
	(visible waypoint2 waypoint6)
	(visible waypoint6 waypoint2)
	(visible waypoint3 waypoint5)
	(visible waypoint5 waypoint3)
	(visible waypoint4 waypoint0)
	(visible waypoint0 waypoint4)
	(visible waypoint4 waypoint1)
	(visible waypoint1 waypoint4)
	(visible waypoint4 waypoint3)
	(visible waypoint3 waypoint4)
	(visible waypoint5 waypoint0)
	(visible waypoint0 waypoint5)
	(visible waypoint5 waypoint6)
	(visible waypoint6 waypoint5)
	(visible waypoint6 waypoint4)
	(visible waypoint4 waypoint6)
	(at_lander general waypoint1)
	(calibration_target camera0 objective2)
	(supports camera0 low_res)
	(calibration_target camera1 objective3)
	(supports camera1 colour)
	(calibration_target camera2 objective1)
	(supports camera2 colour)
	(supports camera2 low_res)
	(calibration_target camera3 objective2)
	(supports camera3 high_res)
	(supports camera3 low_res)
	(calibration_target camera4 objective0)
	(supports camera4 colour)
	(calibration_target camera5 objective0)
	(supports camera5 colour)
	(supports camera5 high_res)
	(supports camera5 low_res)
	(visible_from objective0 waypoint0)
	(visible_from objective1 waypoint0)
	(visible_from objective1 waypoint1)
	(visible_from objective1 waypoint2)
	(visible_from objective1 waypoint3)
	(visible_from objective2 waypoint0)
	(visible_from objective2 waypoint1)
	(visible_from objective2 waypoint2)
	(visible_from objective2 waypoint3)
	(visible_from objective3 waypoint0)
	(visible_from objective3 waypoint1)
	(visible_from objective3 waypoint2)
	(visible_from objective3 waypoint3)
	(visible_from objective3 waypoint4)
	(visible_from objective3 waypoint5)
	(can-use-init-action rotemagent0)
	(can-use-init-action rotemagent1)
	(can-use-init-action rotemagent2)
	(can-use-init-action rotemagent3)
)
(:goal 
(and (communicated_soil_data waypoint6) (communicated_soil_data waypoint0) (communicated_soil_data waypoint3) (communicated_soil_data waypoint4) (communicated_rock_data waypoint4) (communicated_rock_data waypoint3) (communicated_rock_data waypoint0) (communicated_rock_data waypoint1) (communicated_image_data objective3 colour) (communicated_image_data objective2 colour) (communicated_image_data objective3 low_res)))
)