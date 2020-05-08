How to try it out in playground (Using Roassal 2):
-----------------------
| b ds ds2 ds3 generator |
	generator := GolDungeonGenerator new.
	generator digAt: 0@0 depth: 32.
	b := RTGrapher new.
	
	ds := RTData new.
	ds dotShape color: Color green.
	ds points: generator map.
	ds x: #x; y: #y.
	b add: ds.

	ds2 := RTData new.
	ds2 dotShape rectangle size: 4;color: Color orange.
	ds2 points: (generator mapFilteredBy: 2).
	ds2 x: #x; y: #y.
	b add: ds2.
	
	ds3 := RTData new.
	ds3 dotShape rectangle size: 4;color: Color blue.
	ds3 points: (generator mapFilteredBy: 3).
	ds3 x: #x; y: #y.
	b add: ds3.
	
	b.