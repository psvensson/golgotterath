accessing
isOpenDoor
	^ (GolUtil isDoor: self) and: [ self sprite isOpen ].