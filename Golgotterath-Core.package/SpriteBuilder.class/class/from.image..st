instance creation
from: flareSpriteDefinition image: img

	| definition |
	definition := self new
		              image: img;
		              parse: flareSpriteDefinition.
	"add animated sprite somehow"
	^ definition