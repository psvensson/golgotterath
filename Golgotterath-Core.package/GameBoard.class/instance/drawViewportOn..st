drawing
drawViewportOn: aCanvas
	| top bottom right left |
	self iterateOverVisibleArea: [ :pos | 
					| worldpos entity |
					worldpos := self getWorldCoordsFromOffset: pos.
					self paintTileAtPos: worldpos canvas: aCanvas.
					self paintItemAtPos: worldpos canvas: aCanvas.
					self gameMap
						entitiesAt: worldpos
						ifPresent: [ entity := self gameMap entitiesAt: worldpos.
							entity animatedSprite paint: self at: aCanvas ] ].
			self iterateOverVisibleArea: [ :darkpos | 
					| worldpos |
					worldpos := self getWorldCoordsFromOffset: darkpos
					"self paintDarkness: worldpos canvas: aCanvas." ] .
			self animateEffectsOn: aCanvas .
	"minimap drawOn: aCanvas.	"
	"minimap
		ifNotNil: [ minimap
				position: 300 @ 300;
				drawOn: aCanvas ]" 