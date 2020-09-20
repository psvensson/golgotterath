accessing
boardPosition: pos
	"Logger log:'Entity ';log: self name;log:' boardPosition set to: ';log:pos;cr."

	"pos ifNil:[self removeStrategy: nil]."

	animatedSprite
		boardPosition: (oldPosition ifNil: [ pos ] ifNotNil: [ oldPosition ])