initialization
initialize
	super initialize.
	isProcessing := false.
	queue := TAPriorityQueue new.
	executionContext := TAExecutionContext new.