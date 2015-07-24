arguments
argumentDictionary
	"Answer a dictionary with the required and optional arguments set to nil"

	^ Dictionary newFrom: (self requiredArguments , self optionalArguments collect: [ :argument | argument -> nil ])