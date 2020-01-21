accessing
step
	
	stepCalls := stepCalls + 1.
	stepCalls = speed ifFalse: [ ^ self ].
	strategies do: [ :strategy | 
		stepCalls := 0.
		strategy stepAndCheck ifTrue: [ ^ self ] ]