accessing
"protocol: #'as yet unclassified'"

chooseRandomTarget: view
	| index others target |
	target := nil.
	others := (view at: #entities) select: [ :a | a player ].	
	others ifNotEmpty: [ 
		index := others size atRandom .
		target := others at: index.
		Logger log: entity name;log:entity boardPosition;log:' choose target: ';log:target name;log:' pos ';
		log: target boardPosition; cr.	 ].
	^ target 