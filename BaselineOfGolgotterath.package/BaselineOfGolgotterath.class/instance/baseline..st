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
    			with: [ spec repository: 'github://psvensson/Easystar-st/src' ].
			spec
    			baseline: 'ShadowCast'
    			with: [ spec repository: 'github://psvensson/Shadowcast:main/src' ].
			spec
    			baseline: 'QuadTree'
    			with: [ spec repository: 'github://psvensson/QuadTree' ].
			spec
    			baseline: 'BetterDungeons'
    			with: [ spec repository: 'github://psvensson/BetterDungeons-st' ].
			spec
    			baseline: 'PharoSound'
    			with: [ spec repository: 'github://psvensson/PharoSound' ].	 
			spec
				baseline: 'TaskIt'
				with: [ spec repository: 'github://sbragagnolo/taskit' ].	
		].
