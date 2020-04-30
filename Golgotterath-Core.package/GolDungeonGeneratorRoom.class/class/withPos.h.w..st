as yet unclassified
withPos: pos h: h w: w
	| instance area |
	instance := self new.
	Transcript show:'--- new room created at ',pos asString,' h ',h asString,' w ',w asString;cr.
	area := Dictionary new.
	area at: #pos put: pos; at: #w put: w; at: #h put: h.
	instance area: area.
	^ instance.	