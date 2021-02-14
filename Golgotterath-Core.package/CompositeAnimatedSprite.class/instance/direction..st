initialization
direction: direction
	savedDirection := direction.
	selectedAtLayer valuesDo: [ :sprite | sprite direction: direction  ]