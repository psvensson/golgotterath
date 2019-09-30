"
Base class for animated sprites

Usage: 

sprite := Sprite new.
	sprite load: 'images/male_unarmored.png' spriteWidth: 256 spritesPerRow: 8.
	animation := Animation new.
	animation position: 1700@1000	.
	animation named: 'walk'.
	1 to: 4 do: [ :frame | 
		| dir |
		dir := 1.
		(sprite getSpriteImagesColumn: frame)
			do: [ :img | 
				animation addFrame: frame direction: dir image: img.
				dir := dir + 1 ] ].
	animation direction: 6.
	animation openInWorld .
	animation play.		

form := PNGReadWriter formFromStream: 'images/male_unarmored.png' asFileReference  readStream .
w := WriteStream on: ByteArray new.
PNGReadWriter putForm: form onStream: w.
w contents.

encodedContent := w contents base64Encoded.

PNGReadWriter formFromStream: (Base64MimeConverter mimeDecodeToBytes: encodedContent readStream).
"
Class {
	#name : #Sprite,
	#superclass : #Morph,
	#instVars : [
		'sheet',
		'image',
		'spriteImages',
		'direction',
		'spritesPerRow',
		'spriteWidth'
	],
	#category : 'golgotterath'
}

{ #category : #initialization }
Sprite >> addAnimation: anim [ 
	"comment stating purpose of message"
	animations at: anim named put: anim.
]

{ #category : #initialization }
Sprite >> addAnimation: anim named: name [
	"comment stating purpose of message"
	animations at: name put: anim.
]

{ #category : #accessing }
Sprite >> animation: animationName [
	^ animations at: animationName .
]

{ #category : #accessing }
Sprite >> direction [
	^ direction
]

{ #category : #accessing }
Sprite >> direction: anObject [
	direction := anObject
]

{ #category : #accessing }
Sprite >> getSpriteImagesColumn: c [
	| column |
	column := OrderedCollection new.
	1 to: 8 do: [ :i | 
		| img |
		img := spriteImages at: ((c - 1) * spritesPerRow) + i.
		column add: img ].
	^ column
]

{ #category : #accessing }
Sprite >> image [
	^ image
]

{ #category : #accessing }
Sprite >> image: anObject [
	image := anObject
]

{ #category : #initialization }
Sprite >> initialize [
	"comment stating purpose of message"

	
]

{ #category : #actions }
Sprite >> load: fileName [
	"comment stating purpose of message"
	|  |
	self load: fileName spriteWidth: 256.
	
]

{ #category : #actions }
Sprite >> load: fileName spriteWidth: w [
	"loads a png sprite file and splits it up into individuel sprite images by the spriteWidth argument"

	| sprites index |
	spriteWidth := w.
	image := fileName asFileReference
		binaryReadStreamDo: [ :stream | PNGReadWriter formFromStream: stream ].
	Transcript
		show: 'Loading sprite file with width ';
		show: w greaseString.
	sprites := Dictionary new.
	index := 1.
	0 to: image width - w by: w do:
		[ :x | 
			0 to: image height - w by: w do: [ :y | | i aMorph |
				i := (image copy: (x @ y corner: (x + w) @ (y + w))).
				aMorph := ImageMorph new image: i.
				sprites at:index put: aMorph. index := index +1. ] ].
	spriteImages := sprites
]

{ #category : #actions }
Sprite >> load: fileName spriteWidth: w spritesPerRow: spr [
	"loads a png sprite file and splits it up into individuel sprite images by the spriteWidth argument"

	| sprites index |
	index := 1. 
	spriteWidth := w.
	spritesPerRow := spr.
	image := fileName asFileReference
		binaryReadStreamDo: [ :stream | PNGReadWriter formFromStream: stream ].	
	sprites := Dictionary new.
	0 to: image width - w by: w do:
		[ :x | 
			0 to: image height - w by: w do: [ :y | | i aMorph |
				i := (image copy: (x @ y corner: (x + w) @ (y + w))).
				aMorph := ImageMorph new image: i.
				sprites at:index put: aMorph. index := index +1. ] ].
	spriteImages := sprites
]

{ #category : #actions }
Sprite >> loadSpriteImage: img spriteWidth: _width [
	|index sprites |
	Transcript
		show: 'Loading sprite file with width ';
		show: _width greaseString.
	sprites := Dictionary new.
	index := 1.
	0 to: image width - _width by: _width do:
		[ :x | 
			0 to: image height - _width by: _width do: [ :y | | i aMorph |
				i := (img copy: (x @ y corner: (x + _width) @ (y + _width))).
				aMorph := ImageMorph new image: i.
				sprites at:index put: aMorph. index := index +1. ] ].
	spriteImages := sprites
]

{ #category : #actions }
Sprite >> loadSpriteImage: img spriteWidth: _width spritesPerRow: _spr [
	| index sprites |
	Transcript
		show: 'Loading sprite file with width ';
		show: _width greaseString; cr.
		spritesPerRow := _spr.
	sprites := Dictionary new.
	index := 1.
	0 to: img width - _width by: _width do:
		[ :x | 
			0 to: img height - _width by: _width do: [ :y | | i aMorph |
				i := (img copy: (x @ y corner: (x + _width) @ (y + _width))).
				aMorph := ImageMorph new image: i.
				sprites at:index put: aMorph. index := index +1. ] ].
	spriteImages := sprites
]

{ #category : #accessing }
Sprite >> sheet [
	^ sheet
]

{ #category : #accessing }
Sprite >> sheet: anObject [
	sheet := anObject
]

{ #category : #accessing }
Sprite >> spriteImages [
	^ spriteImages
]

{ #category : #accessing }
Sprite >> spriteImages: anObject [
	spriteImages := anObject
]
