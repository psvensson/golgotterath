baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec 
				package: 'Golgotterath-Core';
				package: 'Golgotterath-Core-Tests' with: [ spec requires: #('Golgotterath-Core') ].
			spec
    			baseline: 'MooseAlgos'
    			with: [ spec repository: 'github://moosetechnology/MooseAlgos:master/src' ].
			spec
    			baseline: 'Sound'
    			with: [ spec repository: 'github://psvensson/PharoSound:master' ].	 
		].