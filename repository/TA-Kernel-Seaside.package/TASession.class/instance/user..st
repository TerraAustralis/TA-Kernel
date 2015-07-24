Updating
user: anObject
	user = anObject ifFalse: [
		| logout |
		logout := user notNil.
		user := anObject.
		user
			ifNil: [ logout ifTrue: [ self announce: TALoggedOut ] ] 
			ifNotNil: [ self announce: TALoggedIn ] ]