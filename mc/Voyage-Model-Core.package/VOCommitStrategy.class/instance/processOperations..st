processing
processOperations: anOperationCollection
	preCommitHandlers do: [ :each |
		self processHandler: each operations: anOperationCollection  ].
	anOperationCollection execute.
	postCommitHandlers do: [ :each |
		self processHandler: each operations: anOperationCollection  ].

	