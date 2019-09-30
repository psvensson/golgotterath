"
Holds a number of frames, where each frame is an orderedcollection of eight images of the sprite frame in each direction.
"
Class {
	#name : #Animation,
	#superclass : #Morph,
	#instVars : [
		'name',
		'direction',
		'frames',
		'frame',
		'currentFrame'
	],
	#category : 'golgotterath'
}

{ #category : #adding }
Animation >> addFrame: frameNo direction: dir image: image [
	| framelist|
	framelist := frames at: frameNo ifAbsent: [ Dictionary new ].	
	framelist at: dir put: image.	
	frames at: frameNo put: framelist
]

{ #category : #accessing }
Animation >> direction [
	^ direction
]

{ #category : #accessing }
Animation >> direction: anObject [
	direction := anObject
]

{ #category : #'model-stepping' }
Animation >> drawOn: aCanvas [
	
	
]

{ #category : #initialization }
Animation >> initialize [
	super initialize.
	frames := Dictionary new.
	frame := 1.
	direction := 1.
]

{ #category : #accessing }
Animation >> name: anObject [
	name := anObject
]

{ #category : #accessing }
Animation >> named [
	^ name
]

{ #category : #accessing }
Animation >> named: anObject [
	name := anObject
]

{ #category : #animating }
Animation >> play [
	"Play animation starting from sprite 1"
 	self startStepping.
	
]

{ #category : #'stepping and presenter' }
Animation >> step [
	| aFrame directionFrames |
	currentFrame ifNotNil: [ :arg | self removeMorph: currentFrame ].
	directionFrames := frames at: frame.
	aFrame := directionFrames at: direction.	
	aFrame position: self position .	
	self addMorph: aFrame.
	currentFrame := aFrame .
	frame := frame + 1.
	frame > frames size
		ifFalse: [ ^ self ].
	frame := 1.
	self stopStepping
]

{ #category : #'model-stepping' }
Animation >> stepTime [
	"Play animation starting from sprite 1"
 	^ 200.
	
]
