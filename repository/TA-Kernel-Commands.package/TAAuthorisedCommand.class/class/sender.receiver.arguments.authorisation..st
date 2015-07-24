instance creation
sender: sender receiver: receiver arguments: arguments authorisation: authorisation
	^ self
		sender: sender
		receiver: receiver
		arguments: arguments
		priority: TACommand defaultPriority
		authorisation: authorisation