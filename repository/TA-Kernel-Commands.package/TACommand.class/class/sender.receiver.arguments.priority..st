instance creation
sender: sender receiver: receiver arguments: arguments priority: aPriority
	^ self basicNew
		initialize;
		sender: sender
			receiver: receiver
			arguments: arguments
			priority: aPriority