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
    			baseline: 'Easystar'
    			with: [ spec repository: 'github://psvensson/Easystar-st:master/src' ].
			spec
    			baseline: 'QuadTree'
    			with: [ spec repository: 'github://psvensson/QuadTree:master' ].
			spec
    			baseline: 'BetterDungeons'
    			with: [ spec repository: 'github://psvensson/BetterDungeons-st:master' ].
			spec
    			baseline: 'PharoSound'
    			with: [ spec repository: 'github://psvensson/PharoSound:master' ].	 
			spec
				baseline: 'TaskIt'
				with: [ spec repository: 'github://sbragagnolo/taskit:v1.0' ].	
		].