action
moveTo: position dir: dir
	"Transcript show:'entity moveTo ',position asString,' direction ',dir;cr."
	self visiblePosition: self boardPosition.
	gamemap gameboard soundBoard play: 'walk5'.
	self hp > 0 ifTrue: [ 
		 gamemap moveEntity: self to: position].
	self actionHappened
	