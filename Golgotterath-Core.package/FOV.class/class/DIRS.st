data
DIRS

	| dirs |
	dirs := Dictionary new.
	"4: [[0, -1], [1, 0], [0, 1], [-1, 0]],"
	dirs at: 4 put: { 
			{ 0. -1 }.
			{ 1. 0 }.
			{ 0. 1 }.
			{ -1. 0 } }.
	"8: [[0, -1], [1, -1], [1, 0], [1, 1], [0, 1], [-1, 1], [-1, 0], [-1, -1]],"
	dirs at: 8 put: { 
			{ 0. -1 }.
			{ 1. -1 }.
			{ 1. 0 }.
			{ 1. 1 }.
			{ 0.1 }.
			{ -1.1 }.
			{ -1.0 }.
			{ -1. -1 } }.
	"6: [[-1, -1], [1, -1], [2, 0], [1, 1], [-1, 1], [-2, 0]]"
	dirs at: 6 put: { 
			{ -1. -1 }.
			{ 1. -1 }.
			{ 2. 0 }.
			{ 1. 1 }.
			{ -1. 1 }.
			{ -2.0 } }.
	^ dirs