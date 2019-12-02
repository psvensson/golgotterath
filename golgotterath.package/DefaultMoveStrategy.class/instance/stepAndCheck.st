accessing
stepAndCheck
"Look for entities. Go towards weaker eneimeis. Move away from stronger enemies.
If adjacent to an enemy that is weaker, attack. 
If no entities found, and not going anywhere -select random visible position to go to.
If already going somwhere, continue to go there"
	| finished |
	finished := false.
	targetBoardPos  
		ifNil: [ targetBoardPos := self chooseTargetBoardPos ]
		ifNotNil: [ self moveTowardsTargetBoardPos ].
	^ finished 