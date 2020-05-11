initialization
addFeature: feature At: pos
	| tile featureRect |
	Transcript show:'addFeature adding ',feature name,' at ',(pos asString);cr.
	tile :=self getTile: feature stateSprite.
	self addTile: tile atx: pos x y: pos y.
	featureRect := Rect
		x: pos x
		y: pos y
		width: 1
		height: 1.	
	features insert: featureRect data: feature.	