accessing
nextPut: anObject
	"Add the object to the queue after any other items with the same priority"
	| index |
	monitor critical: [
		index := items findLast: [ :item | item priority <= anObject priority ].
		items add: anObject afterIndex: index.
		monitor signal].
	^ anObject
