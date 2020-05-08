accessing
getRoomAt: pos
	| roomRect results |
	roomRect := Rect
		x: pos x
		y: pos y
		width: 1
		height: 1.
	results := quadTree get: roomRect data: nil.
	results ifEmpty: [ ^ nil ].
	^ (results at: 1) at: #data