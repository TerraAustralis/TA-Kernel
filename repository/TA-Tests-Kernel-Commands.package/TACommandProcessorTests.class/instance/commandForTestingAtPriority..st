testing
commandForTestingAtPriority: priority
	^ TATestCommand sender: self receiver: self arguments: TATestCommand argumentDictionary priority: priority