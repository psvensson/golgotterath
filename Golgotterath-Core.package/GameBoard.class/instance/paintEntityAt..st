drawing
paintEntityAt: pos
	| entity |
	self gameMap entityAt: pos ifPresent: [ 
		entity := self gameMap entityAt: pos.
		self paintEntity: entity boardPosition: pos ]