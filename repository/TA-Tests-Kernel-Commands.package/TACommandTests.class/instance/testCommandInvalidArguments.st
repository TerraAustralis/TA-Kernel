testing
testCommandInvalidArguments
	| arguments |
	arguments := TATestCommand argumentDictionary.
	arguments at: #invalidArgument put: nil.
	self should: [ TATestCommand sender: self receiver: self arguments: arguments ] raise: TAInvalidArgumentsError.
	[ TATestCommand sender: self receiver: self arguments: arguments ]
		on: TAInvalidArgumentsError
		do: [ :ex | 
			self assert: ex arguments size = 1.
			self assert: (ex arguments includes: #invalidArgument) ]