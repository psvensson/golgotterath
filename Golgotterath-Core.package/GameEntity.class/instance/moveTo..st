action
moveTo: position
	self oldPosition: self boardPosition.
	gamemap gameboard soundBoard play: 'walk5'.
	self hp > 0 ifTrue: [ 
		 gamemap addEntity: self at: position]
	