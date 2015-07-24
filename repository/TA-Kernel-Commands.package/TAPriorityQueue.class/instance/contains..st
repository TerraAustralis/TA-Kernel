accessing
contains: anObject
	^ (items detect: [ :item | item == anObject ] ifNone: [ nil ]) notNil