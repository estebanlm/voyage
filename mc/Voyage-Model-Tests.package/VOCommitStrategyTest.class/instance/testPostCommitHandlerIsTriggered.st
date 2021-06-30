tests
testPostCommitHandlerIsTriggered
	| operations |
	repository addPostCommitHandler: [ :value |
		operations := value. ].
	repository save: VOTestDog new.
	
	self assert: operations notNil.
	self assert: operations size = 1