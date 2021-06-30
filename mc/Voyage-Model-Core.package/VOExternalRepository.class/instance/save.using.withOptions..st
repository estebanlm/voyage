private
save: anObject using: aBlock withOptions: aCollection 
	| operations |
	operations := self serialize: anObject.
	
	aBlock ifNotNil: [ 
		aBlock value: operations ].
	
	aCollection ifNotNil: [  
		self applyOptions: aCollection to: operations first ].
	
	self executeOperations: operations