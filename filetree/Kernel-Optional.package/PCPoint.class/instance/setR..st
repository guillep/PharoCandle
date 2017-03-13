
setR: rho
	| radians |
	radians := theta asFloat degreesToRadians.
	x := rho asFloat * radians cos.
	y := rho asFloat * radians sin