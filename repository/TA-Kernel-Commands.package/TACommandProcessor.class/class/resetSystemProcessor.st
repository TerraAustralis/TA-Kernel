accessing
resetSystemProcessor
	"TACommandProcessor resetSystemProcessor"
	SystemProcessor ifNotNil: [ SystemProcessor stop ].
	SystemProcessor := nil.