private building
buildInferedContainer: aClass
	^VOContainer new 
		collectionName: (self collectionNameFor: aClass);
		yourself