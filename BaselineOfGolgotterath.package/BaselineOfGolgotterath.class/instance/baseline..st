baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec
				package: 'golgotterath';
				package: 'golgoterath-tests' with: [ spec requires: #('golgotterath') ].
			spec
    			baseline: 'Dijkstra'	with: [ 
					spec repository: 'github://psvensson/dijkstra-st:master/src' ].	 
		].