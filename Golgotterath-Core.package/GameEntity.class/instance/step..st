accessing
step: gameboard
	| didrun |	
	strategies do: [ :strategy | 
		didrun := strategy stepAndCheck: gameboard .
		didrun ifTrue: [ ^ self ]] .
	