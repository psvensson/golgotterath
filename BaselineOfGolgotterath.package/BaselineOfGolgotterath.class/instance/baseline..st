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
    			baseline: 'MooseAlgos'
    			with: [ spec repository: 'github://moosetechnology/MooseAlgos:master/src' ].	 
		].