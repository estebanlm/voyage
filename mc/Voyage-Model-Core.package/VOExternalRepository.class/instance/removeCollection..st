persistence
removeCollection: aClass 

	self executeOperations: (
		self removeCollectionOperation 
		queryClass: aClass;
		asOperationCollection )