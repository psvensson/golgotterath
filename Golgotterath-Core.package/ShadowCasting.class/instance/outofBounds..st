accessing
outofBounds: pos

	^ pos x < 0 | (pos x > width) | (pos y < 0) | (pos y > height)