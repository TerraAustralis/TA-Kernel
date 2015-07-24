testing
testCommandMissingArguments
	| arguments missing |
	arguments := TATestCommand argumentDictionary.
	arguments removeKey: (missing := TATestCommand requiredArguments first).
	self should: [ TATestCommand sender: self receiver: self arguments: arguments ] raise: TAMissingRequiredArgumentsError.
	[ TATestCommand sender: self receiver: self arguments: arguments ]
		on: TAMissingRequiredArgumentsError
		do: [ :ex |
			self assert: ex arguments size = 1.
			self assert: (ex arguments includes: TATestCommand requiredArguments first)
		 ]