accessing
getDirectionFromPosition: pos
	| dir dx dy |
	"Calculate which drection to move from entity boardpos and position"
	dx := (pos x) - (self boardPosition x) .
	dy := (pos y) - (self boardPosition y) .
	dir := 'foo'.
	((dx = 0) and: (dy < 0)) ifTrue: [ dir := 'up' ].
	((dx > 0 and: dy < 0)) ifTrue: [ dir := 'upright' ].
	((dx > 0 and: dy = 0)) ifTrue: [ dir := 'right' ].
	((dx > 0 and: dy > 0)) ifTrue: [ dir := 'downright' ].	
	((dx = 0 and: dy > 0)) ifTrue: [ dir := 'down' ].		
	((dx < 0 and: dy > 0)) ifTrue: [ dir := 'downleft' ].		
	((dx < 0 and: dy = 0)) ifTrue: [ dir := 'left' ].		
	((dx < 0 and: dy < 0)) ifTrue: [ dir := 'upleft' ].					
	^ dir