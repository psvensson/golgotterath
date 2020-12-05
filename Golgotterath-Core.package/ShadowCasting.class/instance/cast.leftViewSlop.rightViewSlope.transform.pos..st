as yet unclassified
cast: startColumn leftViewSlop: _leftViewSlope rightViewSlope: rightViewSlope transform: transform pos: pos

	| previousWasBlocked savedRightSlope leftViewSlope nextColumn |
	leftViewSlope := _leftViewSlope.
	previousWasBlocked := false.
	savedRightSlope := -1.
	nextColumn := 0.
	startColumn to: width do: [ :xc | 
		xc >= nextColumn  ifTrue: [ 
		xc to: 0 by: -1 do: [ :yc | 
			| gridPos |			
				gridPos := self gridPosFor: pos cpos: xc @ yc transform: transform.
				"Transcript show:'gridPos ',gridPos asString,' nextColumn ',nextColumn asString;cr."
				(self outofBounds: gridPos) ifFalse: [ 
					| leftBlockSlope rightBlockSlope |
					leftBlockSlope := yc + 0.5 / (xc - 0.5).
					rightBlockSlope := yc - 0.5 / (xc + 0.5).
					"self halt."
					"Transcript show:'leftBlockSlope ',leftBlockSlope asString,' rightBlockSlope ',rightBlockSlope asString,' leftViewSlope ',leftViewSlope asString,'  rightViewSlope ',rightViewSlope asString;cr."
					"leftBlockSlope < rightViewSlope ifTrue: [ ^ self ]."
					(leftViewSlope >= rightBlockSlope or: leftBlockSlope >= rightViewSlope) ifTrue: [ 
						| currentlyBlocked |
						self updateLightAndMemory: xc @ yc gridPos: gridPos.
						currentlyBlocked := (isTileFloorBlock value: gridPos) not.
						previousWasBlocked
							ifTrue: [ 
								currentlyBlocked
									ifTrue: [ savedRightSlope := rightBlockSlope ]
									ifFalse: [ 
										previousWasBlocked := false.
										leftViewSlope := savedRightSlope ] ]
							ifFalse: [ 
								currentlyBlocked ifTrue: [ 
									leftBlockSlope <= leftViewSlope ifTrue: [ 
										self
											cast: xc + 1
											leftViewSlop: leftViewSlope
											rightViewSlope: leftBlockSlope
											transform: transform
											pos: pos ].
									previousWasBlocked := true.
									savedRightSlope := rightBlockSlope ] ] ] ] ifTrue: [ 
						Transcript show:gridPos asString,' is out of bounds';cr. ] ].
			 ].
		nextColumn := previousWasBlocked
				         ifTrue: [ xc + 2 ]
				         ifFalse: [ xc + 1 ] ]