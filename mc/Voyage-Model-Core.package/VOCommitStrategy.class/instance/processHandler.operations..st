processing
processHandler: each operations: anOperationCollection
	[ each value: anOperationCollection ]
		on: Error 
		do: [ :err | "ignore" ]