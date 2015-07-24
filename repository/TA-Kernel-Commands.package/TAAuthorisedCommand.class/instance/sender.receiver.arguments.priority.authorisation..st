initialization
sender: aSender receiver: aReceiver arguments: theArguments priority: aPriority authorisation: anAuthorisation
	super
		sender: aSender
		receiver: aReceiver
		arguments: theArguments
		priority: aPriority.
	authorisation := anAuthorisation