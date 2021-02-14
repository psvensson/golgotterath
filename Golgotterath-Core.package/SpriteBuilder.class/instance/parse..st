parsing
parse: aDefinition

	| rows |
	rows := aDefinition substrings: String crlf.
	rows do: [ :row | self parseRow: row ].
	"animatedSprite setEncoded: (self class base64EncodeFromImage: image)."
	animatedSprite
		hoffset: renderOffset x;
		voffset: renderOffset y;
		tileSize: renderSize x.
	animatedSprite
		loadSpriteImage: image
		spriteWidth: renderSize x
		spriteHeight: renderSize y
		spritesPerRow: 32.
	self generateAnimationsFromDefinition