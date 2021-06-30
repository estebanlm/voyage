tests
testHandlerAreTriggered
	| operations |
	repository addPreCommitHandler: [ :value |
		operations := value. ].
	repository addPostCommitHandler: [ :value |
		operations addAll: value operations ].
	repository save: VOTestDog new.
	
	self assert: operations notNil.
	self assert: operations size = 2.
	self assert: operations operations asSet size = 1