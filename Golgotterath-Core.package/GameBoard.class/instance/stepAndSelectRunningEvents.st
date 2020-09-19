accessing
stepAndSelectRunningEvents
	^ events
		select: [ :something | 
			| res |
			res := something stepAnimation.
			res
				ifFalse: [ Transcript
						show: '*** removing event';
						cr. ].
			res ]