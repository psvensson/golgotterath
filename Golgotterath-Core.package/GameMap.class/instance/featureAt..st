initialization
featureAt: pos
	| rect results |
	rect := Rect
		x: pos  x 
		y: pos  y
		width: 1
		height: 1.
	results := features get: rect data: nil.
	"Transcript show:'featureAt ',pos asString,' found ',results size asString,' results';cr."
	results ifEmpty: [ ^ nil ].
	^ results collect: [  : each |  each at: #data ]