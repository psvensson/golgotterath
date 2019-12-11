initialization
play: soundName
	| sound |
	sound := sounds at: soundName.
	sound loudness: 0.1.
	sound play
	