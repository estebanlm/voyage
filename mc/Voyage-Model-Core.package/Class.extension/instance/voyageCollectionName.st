*Voyage-Model-Core
voyageCollectionName
	"This method can be overridden with a more meaningful collection name"
	self isVoyageRoot ifFalse: [ ^ self name asString ].
	^ (((self persistentClass name first: 3) allSatisfy: #isUppercase)
		ifTrue: [ (self persistentClass name allButFirst: 2) ] 
		ifFalse: [ self persistentClass name ]) asString