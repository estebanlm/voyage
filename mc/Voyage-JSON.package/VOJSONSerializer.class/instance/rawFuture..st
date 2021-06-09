private raw
rawFuture: aFuture
	| dictionary description realObject |
	
	realObject := aFuture object.
	description := self repository descriptionBuilder for: realObject class.
	dictionary := Dictionary new 
		at: self class fieldId put: aFuture id;
		at: self class fieldCollection put: description collectionName;
		yourself. 
		
	description shouldRememberKind 
		ifTrue: [ dictionary at: self class fieldType put: realObject className asString ].
		
	^dictionary
