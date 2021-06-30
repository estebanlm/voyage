persistence
remove: anObject 

	self executeOperations: (  
		self removeObjectOperation 
			object: anObject;
			asOperationCollection  )
