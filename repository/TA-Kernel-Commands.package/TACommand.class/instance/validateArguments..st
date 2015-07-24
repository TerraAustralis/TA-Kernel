arguments
validateArguments: theArguments
	"Ensure all required arguments, and only valid optional arguments are present"

	(self requiredArguments difference: theArguments keys)
		ifNotEmpty: [ :missingArguments | TAMissingRequiredArgumentsError signalForArguments: missingArguments command: self ].
	(theArguments keys difference: self requiredArguments , self optionalArguments)
		ifNotEmpty: [ :invalidArguments | TAInvalidArgumentsError signalForArguments: invalidArguments command: self ].
	arguments := theArguments