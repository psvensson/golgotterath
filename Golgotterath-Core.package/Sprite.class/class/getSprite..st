class initialization
getSprite: aSpriteClass
	| sprite |
	Transcript show:'Sprite.getSprite called for ',aSpriteClass className;cr.
	cachedSprites ifNil: [ cachedSprites := Dictionary new ].
	sprite := cachedSprites
		at: aSpriteClass className
		ifAbsentPut: [ | newsprite |
			newsprite := aSpriteClass  new.
			newsprite ].
	^ sprite