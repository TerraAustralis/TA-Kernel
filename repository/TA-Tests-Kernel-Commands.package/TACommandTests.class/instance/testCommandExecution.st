testing
testCommandExecution
	| arguments |
	arguments := TATestCommand argumentDictionary.
	arguments at: TATestCommand requiredArguments first put: true.
	(TATestCommand sender: self receiver: self arguments: arguments) doIt.
	
	self assert: result isNil.
	
	TACommandProcessor systemProcessor start.
	(Delay forMilliseconds: 50) wait.
	TACommandProcessor systemProcessor stop.

	self assert: result notNil.
	self assert: (result at: TATestCommand requiredArguments first)