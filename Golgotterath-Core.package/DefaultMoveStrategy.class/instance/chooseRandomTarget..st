accessing
"protocol: #'as yet unclassified'"

chooseRandomTarget: view
	| index others target |
	target := nil.
	others := (view at: #entities) select: [ :a | a player ].	
	others ifNotEmpty: [ |possibleTarget|
		index := others size atRandom .
		possibleTarget := others at: index.
		(GolUtil 	isPosition: possibleTarget boardPosition 
						withinRadius: entity lightradius 
						of: entity boardPosition) ifTrue: [ 
							target := possibleTarget .
							"Logger log: entity name;log:entity boardPosition;
										log:' choose target: ';	log:possibleTarget name;
										log:' pos ';log: possibleTarget boardPosition; cr."	 ]].
	^ target 