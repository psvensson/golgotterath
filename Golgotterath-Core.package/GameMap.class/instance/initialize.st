initialization
initialize 
	tiles := Tiles new.
	mapRadius := 10.
	entities := Dictionary new.
	map := Dictionary new.	
	items := Dictionary new.
	entitiesArray := OrderedCollection new.
	random := Random new.
	random useClockBasedSeed 