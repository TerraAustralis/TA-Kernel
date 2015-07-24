initialization
sender: aSender receiver: aReceiver arguments: theArguments priority: aPriority
	sender := aSender.
	receiver := aReceiver.
	self validateArguments: theArguments.
	priority := aPriority