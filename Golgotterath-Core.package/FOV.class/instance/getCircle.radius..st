accessing
getCircle: cpos radius: r

	| result dirs countFactor startOffset x y |
	result := OrderedCollection new.
	countFactor := 1.
	topology = 4 ifTrue: [ 
		| eightdir |
		eightdir := self class DIRS at: 8.
		startOffset := { 0. 1 }.
		dirs := { 
			        (eightdir at: 8).
			        (eightdir at: 2).
			        (eightdir at: 4).
			        (eightdir at: 6) } ].
	topology = 6 ifTrue: [ 
		dirs := self class DIRS at: 6.
		startOffset := { -1. 1 } ].
	topology = 8 ifFalse: [ ^ self ].
	dirs := self class DIRS at: 4.
	countFactor := 2.
	startOffset := { -1. 1 }.
	x := cpos x + startOffset at: 1 * r.
	y := cpos y + startOffset at: 2 * r.
	1 to: dirs size do: [ :i | 
		1 to r * countFactor do: [ :j | 
			result add: x @ y.
			x := x + (dirs at: i) at: 1.
			y := y + (dirs at: i) at: 2 ] ].
	^ result