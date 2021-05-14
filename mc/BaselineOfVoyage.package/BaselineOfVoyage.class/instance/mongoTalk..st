external projects
mongoTalk: spec
	spec 
		baseline: 'MongoTalk' 
			with: [ spec repository: 'github://pharo-nosql/mongotalk:revert-taskit/mc';
			loads: #( 'Client' ) ];
		import: 'MongoTalk'
