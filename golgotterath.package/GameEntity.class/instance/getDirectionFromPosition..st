accessing
getDirectionFromPosition: pos
	| dir dx dy |
	"Calculate which drection to move from entity boardpos and position"
	dx := (pos x) - (boardpos x) .
	dy := (pos y) - (boardpos y) .
	dir := 'foo'.
	(dx = 0 and: dy < 1) ifTrue: [ dir := 'up' ].
	(dx > 1 and: dy < 1) ifTrue: [ dir := 'upright' ].
	(dx > 1 and: dy = 0) ifTrue: [ dir := 'right' ].
	(dx > 1 and: dy > 1) ifTrue: [ dir := 'downright' ].	
	(dx = 0 and: dy > 1) ifTrue: [ dir := 'down' ].		
	(dx < 1 and: dy > 1) ifTrue: [ dir := 'downleft' ].		
	(dx < 1 and: dy = 0) ifTrue: [ dir := 'left' ].		
	(dx < 1 and: dy < 1) ifTrue: [ dir := 'upleft' ].					
	^ dir