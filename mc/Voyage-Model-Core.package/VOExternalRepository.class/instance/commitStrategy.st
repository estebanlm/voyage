accessing
commitStrategy
	^ commitStrategy ifNil: [ 
		commitStrategy := self defaultCommitStrategy ]