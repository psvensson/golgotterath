parsing
parsePoint: pointString

	| values |
	values := pointString substrings: ','.
	^ (values first asNumber ) @ (values last asNumber )