accessing
"protocol: #'as yet unclassified'"

chooseRandomTarget: view
	| index others target |
	target := nil.
	others := (view at: #entities) select: [ :a | a player ].
	
	others ifNotEmpty: [ 
		index := others size atRandom .
		target := others at: index.
		Transcript show: entity name,' choose target: ',target name,' pos ',target boardpos asString;cr.	 ].
	^ target 