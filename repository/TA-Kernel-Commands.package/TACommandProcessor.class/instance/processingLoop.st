private
processingLoop
	[ isProcessing ]
		whileTrue: [ queue nextOrNil 
			ifNil: [ (Delay forMilliseconds: 100) wait ] 
			ifNotNil: [ :command | self execute: command ] ]