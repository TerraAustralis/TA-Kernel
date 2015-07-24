actions
start
	"Start processing commands"
	isProcessing ifFalse: [ self startProcessing ]