private
save: anObject withOptions: aCollection 
	| operations |
	operations := self serialize: anObject.
	self applyOptions: aCollection to: operations first.
	self executeOperations: operations