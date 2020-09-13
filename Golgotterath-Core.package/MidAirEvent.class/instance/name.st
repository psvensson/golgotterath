accessing
name
	^ name ifNil: [ referenceObject name ] ifNotNil: [ name ]