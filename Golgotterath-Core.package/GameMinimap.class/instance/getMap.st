as yet unclassified
getMap
	| generator  floor  |
	
	generator := gamemap dungeon.
	m removeAllMorphs.
	"m color: Color transparent ."
	floor := generator map.
	Transcript
		show: 'drwing ' , floor size asString , ' floor tiles';
		cr.
	floor
		do: [ :p | 
			| pt |
			pt := Morph new.
			pt
				position: (base + p) * scale;
				height: scale;
				width: scale;
				color: Color green.
			m addMorph: pt ].
	(generator mapFilteredBy: 2)
		do: [ :door | 
			| pd |
			pd := Morph new.
			pd
				position: (base + door) * scale;
				height: scale;
				width: scale;
				color: Color orange.
			m addMorph: pd ].
	(generator mapFilteredBy: 3)
		do: [ :wall | 
			| pw |
			pw := Morph new.
			pw
				position: (base + wall) * scale;
				height: scale;
				width: scale;
				color: Color blue.
			m addMorph: pw ].
	
	Transcript
		show: 'minimap redrawn';
		cr.
	^ m