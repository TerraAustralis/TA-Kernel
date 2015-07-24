processing commands
processCommand: aCommand
	(queue contains: aCommand)
		ifFalse: [ 
			queue nextPut: aCommand.
			^ true ].
	^ false