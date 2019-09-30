"
Remembers seen parts of the map and keeps track ov viewport into map
"
Class {
	#name : #GameBoard,
	#superclass : #Morph,
	#instVars : [
		'map',
		'viewPort',
		'tiles',
		'tileSize'
	],
	#category : 'golgotterath'
}

{ #category : #adding }
GameBoard >> addTile: tileMorph at: pos [
	map at: pos put: tileMorph .
]

{ #category : #drawing }
GameBoard >> drawOn: aCanvas [
	" Draw all map tiles visibble in the viewport. Also draw entities sorted in correct z-order for a given tile position. "
	| top bottom right left screenx screeny |
 	screenx := 0.
 	screeny := 0.
 	top := viewPort at: #top.
 	bottom := viewPort at: #bottom.
 	right := viewPort at: #right.
 	left := viewPort at: #left.
 	Transcript show: 'drawing gameboard n bfrom ' , top asString , ' to ' , bottom asString.
 	Transcript cr.
 	aCanvas fillRectangle: self bounds color: Color black.
 	top to: bottom do: [ :y | 
 		left to: right do: [ :x | 
 			self paintTile: x @ y at: aCanvas pos: screenx @ screeny.
 			screenx := screenx + 1 ].
 		screenx := 0.
 		screeny := screeny + 1 ] 
]

{ #category : #initialization }
GameBoard >> initialize [

	super initialize .
	map := Dictionary new.
	viewPort := #( #top -> -3. #left -> -3. #bottom -> 3. #right -> 3 ).
	tiles := Tiles new.
 	tileSize := 32.
 	viewPort := Dictionary new.
 	viewPort at: #top put: -3.
 	viewPort at: #left put: -3.
 	viewPort at: #bottom put: 3.
 	viewPort at: #right put: 3 
	
]

{ #category : #accessing }
GameBoard >> map [
 	^ map.
]

{ #category : #drawing }
GameBoard >> paintTile: tilepos at: aCanvas pos: pos [
 	| floor isoPoint position adjustCentre |
 	floor := map at: tilepos x asString , '_' , tilepos y asString.
 	isoPoint := self toISO: pos x @ pos y.
 	adjustCentre := self toISO: (self width / 2) @ 0.
 	position := self position + adjustCentre + ((isoPoint x * tileSize) @ (isoPoint y * tileSize)).
 	floor position: position.
 	floor drawOn: aCanvas 
]

{ #category : #convertion }
GameBoard >> toISO: point [
 	"isoX = cartX - cartY;
 	isoY = (cartX + cartY) / 2;"
 	| isoX isoY x y |
 	
 	x := point x.
 	y := point y.
 	isoX := x - y.
 	isoY := (x + y) / 2.
 	^ isoX @ isoY 
]
