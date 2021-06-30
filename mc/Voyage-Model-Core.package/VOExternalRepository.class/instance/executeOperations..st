persistence
executeOperations: anOperationCollection 
	self commitStrategy 
		executeOperations: anOperationCollection 