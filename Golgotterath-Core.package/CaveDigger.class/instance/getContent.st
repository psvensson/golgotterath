generating
getContent
	| start end |
	start := left@top.
	end := right@bottom.
	Logger log:'getContent from ';log:start;log:' to ';log:end;cr.
	GolUtil from: start to: end do: [ :pos | | out |
		"tiles := quadTree get: (self pointRectFor: pos) data: nil.
		out := tiles isEmpty ifTrue: [ '#' ] 
								ifFalse: [ (tiles at: 1) at: #data ]."
		out := '#'.
		dungeon at: pos ifPresent: [ out := dungeon at: pos  ].
		Logger log: out.
		pos x = right ifTrue: [ Logger cr ]].