testing
isSupported
	self flag: #todo. "Do not use exceptions to know it"

	adminPool withDatabase: [ :db |
		[ db replicaSetStatus ]
			on: MongoCommandError
			do: [ ^ false ] ].
	^ true