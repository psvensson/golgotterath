drawing
render
	| goscreen |
	"Transcript show:'render: gameboard owner position is ',(self owner position asString),' center is ',self owner center asString;cr."
	self
		removeAllMorphs;
		color: Color black;
		renderViewport;
		renderEffects.
	self updateMinimap.
	self addMorphFront: minimap.
	player hp < 0
		ifFalse: [ ^ self ].
	goscreen := GameOverScreen new.
	goscreen position: self position.
	Transcript
		show: 'showing Game Over screen';
		cr.
	self addMorphFront: goscreen