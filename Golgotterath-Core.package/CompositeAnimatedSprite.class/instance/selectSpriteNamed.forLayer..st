initialization
selectSpriteNamed: spriteName forLayer: layerName

	selectedAtLayer at: layerName ifAbsent: [ ^nil ]