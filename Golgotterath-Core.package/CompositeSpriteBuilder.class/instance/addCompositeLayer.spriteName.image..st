adding
addCompositeLayer: layerName spriteName: spriteName image: img

	| spriteBuilder animatedSprite |
	spriteBuilder := SpriteBuilder from: definition image: img.
	animatedSprite := spriteBuilder animatedSprite.
	animatedSprite name: spriteName.
	compositeSprite addAnimatedSprite: animatedSprite layer: layerName