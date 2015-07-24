testing
testProcessorCreation
	| systemProcessor |
	TACommandProcessor resetSystemProcessor.
	systemProcessor := TACommandProcessor systemProcessor.
	self deny: systemProcessor isProcessing.
	systemProcessor start.
	self assert: systemProcessor isProcessing.