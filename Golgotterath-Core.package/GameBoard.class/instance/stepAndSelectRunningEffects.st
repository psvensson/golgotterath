accessing
stepAndSelectRunningEffects
	^ effects
		select: [ :something | 
			| res |
			res := something animateAndCheckIfDone.
			res
				ifFalse: [ Transcript
						show: '*** removing event';
						cr. ].
			res ]