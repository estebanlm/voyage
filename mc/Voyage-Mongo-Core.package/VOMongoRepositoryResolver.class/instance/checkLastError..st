private persistence
checkLastError: db
	| lastError |
	lastError := db command: {'getLastError'->1} asDictionary.
	lastError at: 'err' ifPresent: [ :err | err = 'not master' ifTrue: [ VOMongoNotMasterError signal ] ]

	