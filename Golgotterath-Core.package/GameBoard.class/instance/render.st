drawing
render
	" Draw all map tiles visible in the viewport. Also draw entities sorted in correct y-order for a given tile position. "

	"aCanvas fillRectangle: self bounds color: Color black."

	"oldMorphs do: [ :oldMorph | self removeMorph: oldMorph  ].
	oldMorphs := OrderedCollection new."

	self
		removeAllMorphs;
		color: Color black;
		renderViewport;
		renderEffects.
	topbar update: self.
	self updateMinimap .
	self addMorphFront: minimap.