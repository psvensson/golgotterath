drawing
drawViewportOn: aCanvas
	self
		iterateOverVisibleArea: [ :pos | 
			| worldpos entity |
			worldpos := self getWorldCoordsFromOffset: pos.
			self paintTileAtPos: worldpos canvas: aCanvas.
			self paintItemAtPos: worldpos canvas: aCanvas.
			self gameMap
				entityAt: worldpos
				ifPresent: [ entity := self gameMap entityAt: worldpos.
					self paintEntity: entity at: aCanvas] ].
	"self
		iterateOverVisibleArea: [ :darkpos | 
			| worldpos |
			worldpos := self getWorldCoordsFromOffset: darkpos"
			"self paintDarkness: worldpos canvas: aCanvas.]."
	self animateEffectsOn: aCanvas.
	self animateEventsOn: aCanvas
	"minimap drawOn: aCanvas.	"
	"minimap
		ifNotNil: [ minimap
				position: 300 @ 300;
				drawOn: aCanvas ]"