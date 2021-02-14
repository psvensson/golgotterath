parsing
generateAnimationsFromDefinition

	animationDefinitions keysAndValuesDo: [ :name :values | 
		| start end animation |
		Transcript show:name,' -> ',values asString;cr.
		start := (values at: 'position') asNumber.
		end := start + (values at: 'frames') asNumber - 1.
		animation := animatedSprite
			             createAnimation: name
			             start: start
			             end: end.
		animation duration: (self getDurationFor: values).
		animatedSprite addAnimation: animation ]