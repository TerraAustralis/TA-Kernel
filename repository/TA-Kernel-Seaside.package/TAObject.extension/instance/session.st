*TA-Kernel-Seaside
session
	"Answer the current seaside session, instance of WASesssion or a subclass."

	self requestContext ifNil: [ ^ self error: 'Session only available within Seaside' ].
	^ self requestContext session