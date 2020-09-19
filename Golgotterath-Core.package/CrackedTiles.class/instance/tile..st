initialization
tile: tilename
	| i |
	i := tiles at: tilename.
	image := i.
	^ i