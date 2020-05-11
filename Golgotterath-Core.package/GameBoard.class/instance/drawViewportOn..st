drawing
drawViewportOn: aCanvas
	| top bottom right left |
	viewPort
		ifNotNil: [ top := viewPort at: #top.
			bottom := viewPort at: #bottom.
			right := viewPort at: #right.
			left := viewPort at: #left.
			top to: bottom do: [ :y | 
				left to: right do: [ :x | 
					| worldpos entity |
					worldpos := self getWorldCoordsFromOffset: x @ y.
					self paintTileAtPos: worldpos canvas: aCanvas.
					self paintItemAtPos: worldpos canvas: aCanvas.
					self gameMap
						entitiesAt: worldpos
						ifPresent: [ entity := self gameMap entitiesAt: worldpos.
							entity animatedSprite paint: self at: aCanvas ] ] ].
			top - 1 to: bottom + 1 do: [ :y | 
				left - 1 to: right + 1 do: [ :x | 
					| worldpos |
					worldpos := self getWorldCoordsFromOffset: x @ y.
					"self paintDarkness: worldpos canvas: aCanvas."
					 ] ].
			self animateEffectsOn: aCanvas ]