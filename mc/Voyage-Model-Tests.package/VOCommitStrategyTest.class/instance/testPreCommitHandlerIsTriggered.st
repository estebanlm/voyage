tests
testPreCommitHandlerIsTriggered
	| operations |
	repository addPreCommitHandler: [ :value |
		operations := value. ].
	repository save: VOTestDog new.
	
	self assert: operations notNil.
	self assert: operations size = 1