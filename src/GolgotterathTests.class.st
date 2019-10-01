"
Tests for Golgotterath
"
Class {
	#name : #GolgotterathTests,
	#superclass : #TestCase,
	#category : 'golgotterath'
}

{ #category : #'setup - tear down' }
GolgotterathTests >> setup [
	"comment stating purpose of message"

	|  |
	
]

{ #category : #tests }
GolgotterathTests >> testCreateAnimation [
	| sprite animation |
	sprite := Sprite new.
	sprite load: 'images/male_unarmored.png' spriteWidth: 256 spritesPerRow: 8.
	animation := Animation new.
	animation named: 'walk'.
	1 to: 4 do: [ :frame | 
		| dir |
		dir := 1.
		(sprite getSpriteImagesColumn: frame)
			do: [ :img | 
				animation addFrame: frame direction: dir image: img.
				dir := dir + 1 ] ].
	sprite addAnimation: animation.
	self assert: sprite spriteImages size equals: 64
]

{ #category : #'setup - tear down' }
GolgotterathTests >> testCreateGameBoard [
 	| gameBoard tiles floor |
 	gameBoard := GameBoard new.
 	tiles := Tiles new.
 	floor := tiles tile: 'floor'.
 	-3 to: 3 do: [ :y | -3 to: 3 do: [ :x | gameBoard addTile: floor at: x @ y ] ].
 	self assert: gameBoard map size equals: 49 
	
]

{ #category : #tests }
GolgotterathTests >> testLoadSprite [
	| sprite |
	sprite := Sprite new.
	sprite load: 'images/male_unarmored.png' spriteWidth: 256.
	self assert: (sprite spriteImages) size equals: 64
]
