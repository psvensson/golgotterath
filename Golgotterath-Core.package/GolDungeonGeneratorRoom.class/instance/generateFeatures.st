accessing
generateFeatures
	(self h > 2 and: self w > 2)
		ifTrue: [ 1
				timesRepeat: [ 6 atRandom = 1
						ifTrue: [ features add: self generateFeature ] ] ]