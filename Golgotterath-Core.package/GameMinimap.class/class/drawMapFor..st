drawing
drawMapFor: gameMap
	| m generator pl scale |
	scale := 3.
	generator := gameMap dungeon.
	m := Morph new.
	m color: Color yellow;height:100;width:100.
	generator map do: [ :p |
		| pt |
		pt := Morph new.
		pt position: p*scale ;height: scale; width: scale;color: Color green.
		m addMorph: pt ].
	(generator mapFilteredBy: 2) do: [ :door | | pd|
		pd := Morph new.
		pd position: door*scale; height: scale; width: scale;color: Color orange.
		m addMorph: pd ].
	(generator mapFilteredBy: 3) do: [ :wall | | pw|
		pw := Morph new.
		pw position: wall*scale; height: scale; width: scale;color: Color blue.
		m addMorph: pw ].	
	pl := Morph new.
	pl
		position: gameMap gameboard player boardPosition;
		height: 1;
		width: 1;
		color: Color white.
	m addMorph:pl.	
	^ m