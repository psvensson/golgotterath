event handler
keyStroke: anEvent
	| keyValue selectedItem |
	keyValue := anEvent keyValue.
	"player isMoving: false."
	player hp < 1
		ifTrue: [ ^ self ].
	Logger
		log: 'key ';
		log: keyValue;
		cr.
	keyValue = 32
		ifTrue: [  ].
	keyValue = 63
		ifTrue: [ self showHelpWindow ].
	(keyValue = 30 or: keyValue = 56)
		ifTrue: [ self movePlayer: self player dir: 'up' ].	"up arrow"
	keyValue = 55
		ifTrue: [ self movePlayer: self player dir: 'upleft' ].	"up arrow"
	keyValue = 57
		ifTrue: [ self movePlayer: self player dir: 'upright' ].	"up arrow"
	keyValue = 49
		ifTrue: [ self movePlayer: self player dir: 'downleft' ].	"up arrow"
	keyValue = 51
		ifTrue: [ self movePlayer: self player dir: 'downright' ].	"up arrow"
	(keyValue = 31 or: keyValue = 50)
		ifTrue: [ self movePlayer: self player dir: 'down' ].	"down arrow"
	(keyValue = 29 or: keyValue = 54)
		ifTrue: [ self movePlayer: self player dir: 'right' ].	"right arrow"
	(keyValue = 28 or: keyValue = 52)
		ifTrue: [ self movePlayer: self player dir: 'left' ].	"left arrow"
	keyValue = 122
		ifTrue: [ self playAnimation: 'hit' for: self player ].
	keyValue = 120
		ifTrue: [ self playAnimation: 'shoot' for: self player ].
	keyValue = 99
		ifTrue: [ self playAnimation: 'hurt' for: self player ].
	keyValue = 118
		ifTrue: [ self playAnimation: 'die' for: self player ].
	keyValue = 103
		ifTrue: [ player pickup ].
	keyValue = 100
		ifTrue: [ player dropItem ].
	keyValue = 111
		ifTrue: [ openingDoor := true.
			^ self ].
	keyValue = 102
		ifTrue: [ .
			projectileToFire := nil.
			fireWeapon := player fireWeapon.
			^ self ].
	keyValue = 119
		ifTrue: [ player wieldItem ].
	keyValue = 113
		ifTrue: [ player quaffItem ].
	keyValue = 101
		ifTrue: [ player equipItem ].
	keyValue = 105
		ifTrue: [ self
				showInventoryFor: player
				onSelect: [ :item | selectedItem := item ] ].
	openingDoor := false.
	self gameMap stepMap.
	"topbar update: self."