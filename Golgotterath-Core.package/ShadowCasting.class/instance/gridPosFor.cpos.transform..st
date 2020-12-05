accessing
gridPosFor: pos cpos: cpos transform: transform

	| gridx gridy |
	gridx := pos x + (cpos x * (transform at: #xx))
	         + (cpos y * (transform at: #xy)).

	gridy := pos y + (cpos x * (transform at: #yx))
	         + (cpos y * (transform at: #yy)).
	^ gridx @ gridy