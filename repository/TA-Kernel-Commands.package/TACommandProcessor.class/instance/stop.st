actions
stop
	"Start processing commands"
	isProcessing ifTrue: [ self stopProcessing ]