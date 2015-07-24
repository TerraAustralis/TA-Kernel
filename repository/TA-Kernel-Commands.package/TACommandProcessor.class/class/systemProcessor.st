accessing
systemProcessor
	"TACommandProcessor systemProcessor"
	"Answer the System wide CommandProcessor"
	^ SystemProcessor ifNil: [ SystemProcessor := self new ]