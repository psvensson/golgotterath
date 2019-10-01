"
BAse class for animated sprites
"
Class {
	#name : #AnimatedSprite,
	#superclass : #Sprite,
	#instVars : [
		'animations',
		'animationStep'
	],
	#category : 'golgotterath'
}

{ #category : #adding }
AnimatedSprite >> addAnimation: anim [ 
	"comment stating purpose of message"
	animations at: anim named put: anim.
]

{ #category : #adding }
AnimatedSprite >> addAnimation: anim named: name [
	"comment stating purpose of message"
	animations at: name put: anim.
]

{ #category : #intializer }
AnimatedSprite >> createAnimation: name start: start end: end [
	| animation |
	animation := Animation new.
	animation named: name.
	1 to: 4 do: [ :frame | 
		| dir |
		dir := 1.
		(self getSpriteImagesColumn: frame)
			do: [ :img | 
				animation addFrame: frame direction: dir image: img.
				dir := dir + 1 ] ].
	^ animation .		
]

{ #category : #adding }
AnimatedSprite >> getAnimation: name [
	"comment stating purpose of message"

^	animations at: name
]

{ #category : #adding }
AnimatedSprite >> initialize [
	super initialize .
	animations := Dictionary new.
]
