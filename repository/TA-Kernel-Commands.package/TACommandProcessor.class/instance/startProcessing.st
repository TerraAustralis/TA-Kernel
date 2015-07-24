private
startProcessing
	isProcessing := true.
	[ self processingLoop ] fork