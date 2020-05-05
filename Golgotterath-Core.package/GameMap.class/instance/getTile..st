accessing
getTile: tilename
	| tile adjust sprite |
	tile := tiles
		tile: tilename
		ifAbsent: [ | t |
			t := newtiles tile: tilename.
			adjust := newtiles tileAdjustment.
			t ].
	adjust ifNil: [ adjust := tiles tileAdjustment ].
	"tilename = 'bluewall'
		ifTrue: [ self debug ]."
	sprite := Sprite new
		image: tile;
		name: tilename.
	sprite tileAdjustment: adjust.
	^ sprite