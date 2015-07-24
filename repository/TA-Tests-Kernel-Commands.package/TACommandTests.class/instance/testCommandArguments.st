testing
testCommandArguments
	| arguments |
	arguments := TATestCommand argumentDictionary.
	self assert: (arguments keys includesAll: TATestCommand requiredArguments , TATestCommand optionalArguments).
