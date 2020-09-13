initialization
initialize
	mapRadius := 10.
	entities := Dictionary new.
	midair := Dictionary new.
	map := Dictionary new.
	items := Dictionary new.
	midAirEvents := OrderedCollection  new.
	entitiesArray := OrderedCollection new.
	random := Random new.
	random useClockBasedSeed.
	features := QuadTree
		size: 1024
		maxLeafs: 8
		maxDepth: 16
		x: 0
		y: 0.
	self createTiles.
	Transcript
		show: 'Gamemap initialized';
		cr