action
moveTo: position dir: dir
	self oldPosition: self boardPosition.
	animatedSprite setTargetForDirectionString: dir.
	gamemap gameboard soundBoard play: 'walk5'.
	self hp > 0 ifTrue: [ 
		 gamemap moveEntity: self to: position].
	self actionHappened
	