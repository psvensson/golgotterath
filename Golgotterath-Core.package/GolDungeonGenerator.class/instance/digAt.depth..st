initialization
digAt: pos depth: depth
	| alldoors doors door foo |
	doors := OrderedCollection new.
	alldoors := OrderedCollection new.
	door := Dictionary new.
	door
		at: #pos put: pos;
		at: #checked put: false;
		at: #direction put: #down.
	doors add: door.
	[ currentDepth = depth and: doors isNotEmpty  ]
		whileFalse: [ | d room |
			doors ifNotEmpty: [ 
			d := doors removeFirst.
			room := self createRandomRoomAt: d depth: currentDepth.			
			room ifNotNil: [ doors addAll: room doors. alldoors addAll: room doors ]].
			currentDepth := currentDepth + 1 ].
	foo := self getUncheckedDoors: alldoors. 
	Transcript show:'doors left unchecked: ',foo size asString,' of ',alldoors size asString,' doors';cr.