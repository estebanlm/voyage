tests
testErrorInHandlerDoesNotPreventSave
	repository addPreCommitHandler: [ :value |
		1/0 ].
	repository save: VOTestDog new.
	
	self assert: (repository selectAll: VOTestDog) size equals: 1 