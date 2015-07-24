execution
executeInContext: anExecutionContext
	self checkAuthorisation.
	super executeInContext: anExecutionContext 