persistence
removeAll: aClass 

	self executeOperations: (
	  self removeAllOperation 
		queryClass: aClass;
		asOperationCollection )
	