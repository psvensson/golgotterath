initialization
addAnimatedSprite: animatedSprite layer: layerName

	| layer |
	layer := layers at: layerName ifAbsent: [ Dictionary new ].
	layer at: animatedSprite name put: animatedSprite.
	layers at: layerName put: layer.
	self setSelectSpriteNamed: animatedSprite name forLayer: layerName