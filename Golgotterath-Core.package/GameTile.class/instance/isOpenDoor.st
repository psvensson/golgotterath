accessing
isOpenDoor
	Transcript show:'isOpenDoor';cr.
	^ (GolUtil isDoor: self) and: [ self sprite isOpen ].