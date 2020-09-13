generation
generateMap
	| generator floor |
	"Transcript show:'minimap generateMap for level ',gamemap level asString;cr."
	generator := gamemap dungeon.
	self removeAllMorphs.
	"m color: Color transparent ."
	floor := generator map.
	floor
		do: [ :p | 				
			self plotPointAt: p  color: Color green ].
	(generator mapFilteredBy: 2)
		do: [ :door | 			
			self plotPointAt: door  color: Color orange. ].
	(generator mapFilteredBy: 3)
		do: [ :wall | 
			self plotPointAt: wall  color: Color blue].
	playerPointer := self plotPointAt: player boardPosition   color: Color red	.
	self changed.	
	