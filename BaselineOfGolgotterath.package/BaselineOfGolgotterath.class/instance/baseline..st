baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec
				package: 'golgotterath';
				package: 'golgoterath-ests' with: [ spec requires: #('golgotterath') ] 
		].