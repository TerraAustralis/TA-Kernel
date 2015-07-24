testing
testQueue
	| systemProcessor command1 |
	TACommandProcessor resetSystemProcessor.
	systemProcessor := TACommandProcessor systemProcessor.
	self assert: systemProcessor isEmpty.
	command1 := self commandForTesting.
	self assert: command1 doIt.
	self deny: command1 doIt.
	self assert: systemProcessor queue size == 1.
	systemProcessor queue flush.
	self assert: systemProcessor isEmpty.