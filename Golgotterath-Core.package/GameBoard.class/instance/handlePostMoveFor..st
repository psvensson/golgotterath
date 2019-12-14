action
handlePostMoveFor: entityToRemove
	| target |
	target := entityToRemove animatedSprite target.
			gameMap moveTargets removeKey: target ifAbsent: [].
			target
				ifNotNil: [ gameMap removeEntityAt: entityToRemove boardPosition.
					entityToRemove hp > 0
						ifTrue: [ 
							gameMap addEntity: entityToRemove at: target ] ].