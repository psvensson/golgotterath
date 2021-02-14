test
testCompositeSprite

	| compositeSpriteBuilder leather head sword head2 shortSword shortBow rod greatSword clothes steel |
	leather := self getImageLeatherArmour.
	clothes := self getImageClothes .
	steel := self getImageSteelarmour .
	head := self getImageHead1.
	head2 := self getImageHead2.
	sword := self getImageLongSword.
	shortSword := self getImageShortsword .
	shortBow := self getImageShortbow .
	rod := self getImageRod .
	greatSword := self getImageGreatsword .
	compositeSpriteBuilder := CompositeSpriteBuilder from: testDefinition.
	compositeSpriteBuilder addCompositeLayer: 'head' spriteName: 'male_head1' image: head.
	compositeSpriteBuilder addCompositeLayer: 'head' spriteName: 'male_head2' image: head2.
	compositeSpriteBuilder addCompositeLayer: 'body' spriteName: 'leather_armour' image: leather.
	compositeSpriteBuilder addCompositeLayer: 'body' spriteName: 'steel_armour' image: steel.
	compositeSpriteBuilder addCompositeLayer: 'body' spriteName: 'clothes' image: clothes.
	compositeSpriteBuilder addCompositeLayer: 'weapon' spriteName: 'long_sword' image: sword.
	compositeSpriteBuilder addCompositeLayer: 'weapon' spriteName: 'short_sword' image: shortSword .
	compositeSpriteBuilder addCompositeLayer: 'weapon' spriteName: 'short_bow' image: shortBow .
	compositeSpriteBuilder addCompositeLayer: 'weapon' spriteName: 'rod' image: rod.
	compositeSpriteBuilder addCompositeLayer: 'weapon' spriteName: 'great_sword' image: greatSword.
	compositeSpriteBuilder inspect