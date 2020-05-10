initialization
featuresNearby: entity
	| rect results |
	rect := Rect
		x: entity boardPosition  x - 1
		y: entity boardPosition  y - 1
		width: 3
		height: 3.
	results := features get: rect data: nil.
	results ifEmpty: [ ^ nil ].
	^ results collect: [  : each |  each at: #data ]