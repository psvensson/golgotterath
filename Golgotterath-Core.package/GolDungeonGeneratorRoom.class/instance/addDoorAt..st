accessing
addDoorAt: p
	"check direction of door, depending on which side of the room the door is on"
	| direction door |
	(pos y = p y) ifTrue: [ direction := 'up' ].
	(pos y + h = p y) ifTrue: [ direction := 'down' ].
	(pos x = p x) ifTrue: [ direction := 'left' ].
	(pos x + w = p x) ifTrue: [ direction := 'right' ].
	door := Dictionary new.
	door at: #pos put: pos; at: #direction put: direction.
	doors add: door.