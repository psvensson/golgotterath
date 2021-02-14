initialization
setSelectSpriteNamed: spriteName forLayer: layerName

	| sprite oldSprite |
	oldSprite := self selectSpriteNamed: spriteName forLayer: layerName.
	oldSprite ifNotNil: [ self removeMorph: oldSprite ].
	sprite := (layers at: layerName) at: spriteName.
	Transcript
		show:
			'setSelectedSpriteNamed: ' , spriteName , ' for layer ' , layerName;
		cr.
	selectedAtLayer at: layerName put: sprite.
	self addMorph: sprite