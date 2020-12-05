Roassal3 playground example to visualize shadowcast points;
-----
gamemap := GameMap new level: 1.
shadowCaster := ShadowCaster new gamemap: gamemap.
-3 to: 3 do: [ :y | -3 to: 3 do: [ :x | |floor|floor := shadowCaster gamemap getTile: 'cr_floor1'.
	floor boardPosition: x@y.
	shadowCaster gamemap addTile: floor at: x@y.] ].
addTestWall := [ :pos|
	|wall|
	wall := shadowCaster gamemap getTile: 'greywall'.
	wall boardPosition: pos.
	shadowCaster gamemap addTile: wall at: pos. ].
	addTestWall value: 0@(-2).
	addTestWall value: 0@(2).
	addTestWall value: (-2)@0.
	addTestWall value: 2@0.
memory := Dictionary new.
side := ShadowCaster shadowCastSides at: #top.
res := shadowCaster shadowCastRenderFrom: 0@0 distance: 1 memory: memory.
"res addAll: (shadowCaster shadowCastRenderFrom: 0@0 distance: 2 memory: memory).
res addAll: (shadowCaster shadowCastRenderFrom: 0@0 distance: 3 memory: memory)."
xarr := OrderedCollection new.
yarr := OrderedCollection new.
res do: [ :p | xarr add: p x. yarr add: p y ].
b := RSChart new.	
b addDecoration: RSHorizontalTick new doNotUseNiceLabel.
b addDecoration: RSVerticalTick new.
ds := RSScatterPlot  new x: xarr y: yarr.
ds  color: Color orange.
b addPlot: ds.
b