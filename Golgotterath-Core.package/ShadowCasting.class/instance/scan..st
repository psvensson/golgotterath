accessing
scan: pos

	1 to: 8 do: [ :octant | 
		Transcript show: '------ octans ',octant asString;cr.
		self
			cast: 1
			leftViewSlop: 1.0
			rightViewSlope: 0.0
			transform: (self class octantTransform at: octant)
			pos: pos ].
	^ updatedLight