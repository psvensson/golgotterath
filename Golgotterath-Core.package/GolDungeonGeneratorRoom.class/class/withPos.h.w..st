as yet unclassified
withPos: pos h: h w: w
	| instance |
	instance := self new.
	Transcript show:'--- new room created at ',pos asString,' h ',h asString,' w ',w asString;cr.
	instance pos: pos; h: h; w: w.
	^ instance.	