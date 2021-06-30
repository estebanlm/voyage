accessing
baseline: spec
	<baseline>
	
	spec for: #common do: [
		self magritte: spec.
		self persistenceQueries: spec.
		self mongoTalk: spec.
		self arangoDB: spec.
		self punqlite: spec.
		self ejdb: spec.
		self imageWorker: spec.
		
		spec
			"core"
			package: 'Voyage-Model-Core' with: [ spec requires: 'Magritte' ];
			package: 'Voyage-Model-Tests' with: [ spec requires: 'Voyage-Model-Core' ];
			package: 'Voyage-Memory-Core' with: [ spec requires: 'Voyage-Model-Core' ];
			package: 'Voyage-Memory-Tests' with: [ spec requires: 'Voyage-Memory-Core' ];
			package: 'Voyage-JSON' with: [ spec requires: #('Voyage-Model-Core' 'Magritte') ];
			package: 'Voyage-JSON-Tests' with: [ spec requires: 'Voyage-JSON' ];
			"mongo"
			package: 'Voyage-Mongo-Core' with: [ spec requires: #('MongoTalk' 'Voyage-Model-Core') ];
			package: 'Voyage-Mongo-Tests';
			package: 'Voyage-Mongo-MultipleImageTests' with: [ spec requires: #('Voyage-Mongo-Tests' 'ImageWorker') ];
			"arango"
			package: 'Voyage-Arango-Core' with: [ spec requires: #('ArangoDB' 'PersistenceQuery' 'Voyage-Model-Core') ];
			package: 'Voyage-Arango-Tests';
			"ejdb"
			package: 'Voyage-EJDB' with: [ spec requires: #('EJDB' 'Voyage-Model-Core') ];
			package: 'Voyage-EJDB-Tests';
			"unqlite"
			package: 'Voyage-UnQLite' with: [ spec requires: #('PunQLite' 'Voyage-Model-Core') ];
			package: 'Voyage-UnQLite-Tests';
			"utils"
			package: 'Voyage-Seaside-Container' with: [ spec requires: 'Voyage-Model-Core' ];
			package: 'Voyage-Mongo-Utils' with: [ spec requires: #('Voyage-Mongo-Core') ].
			
		spec
			group: 'default' with: #('core' 'memory' 'mongo tests' 'arango tests');
			group: 'core' with: #('Voyage-Model-Core');
			group: 'memory' with: #('core' 'Voyage-JSON' 'Voyage-Memory-Core');
			group: 'memory tests' with: #('memory' 'Voyage-Memory-Tests' 'Voyage-Model-Tests');
			group: 'mongo' with: #('Voyage-JSON' 'Voyage-Mongo-Core' 'Voyage-Mongo-Utils');
			group: 'mongo tests' with: #('mongo' 'Voyage-Model-Tests' 'Voyage-JSON-Tests' 'Voyage-Mongo-Tests');
			group: 'mongo tests multiple' with: #('mongo tests' 'Voyage-Mongo-MultipleImageTests');
			group: 'arango' with: #('Voyage-JSON' 'Voyage-Arango-Core');
			group: 'arango tests' with: #('arango' 'Voyage-Model-Tests' 'Voyage-JSON-Tests' 'Voyage-Arango-Tests');
			group: 'unqlite' with: #('Voyage-JSON' 'Voyage-UnQLite');
			group: 'unqlite tests' with: #('unqlite' 'Voyage-Model-Tests' 'Voyage-JSON-Tests' 'Voyage-UnQLite-Tests');
			group: 'ejdb' with: #('Voyage-JSON' 'Voyage-EJDB');
			group: 'ejdb tests' with: #('ejdb' 'Voyage-Model-Tests' 'Voyage-JSON-Tests' 'Voyage-EJDB-Tests') 
			
			].
