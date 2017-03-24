as yet unclassified
setR: rho degrees: theta
	| radians |
	radians := theta asFloat degreesToRadians.
	x := rho asFloat * radians cos.
	y := rho asFloat * radians sin