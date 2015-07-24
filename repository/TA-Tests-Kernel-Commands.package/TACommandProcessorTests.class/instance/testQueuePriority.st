testing
testQueuePriority
	| systemProcessor command1 command2 command3 |
	TACommandProcessor resetSystemProcessor.
	systemProcessor := TACommandProcessor systemProcessor.
	self assert: systemProcessor isEmpty.
	command1 := self commandForTesting.
	command2 := self commandForTestingAtPriority: TACommand highPriority.
	command3 := self commandForTestingAtPriority: TACommand lowPriority.
	self assert: command1 doIt.
	self assert: systemProcessor queue size == 1.
	self assert: command2 doIt.
	self assert: systemProcessor queue size == 2.
	self assert: command3 doIt.
	self assert: systemProcessor queue size == 3.
	self assert: systemProcessor queue nextOrNil == command2.
	self assert: systemProcessor queue nextOrNil == command1.
	self assert: systemProcessor queue nextOrNil == command3.
	self assert: systemProcessor queue nextOrNil == nil.