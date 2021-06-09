private
addSpecialAttributesFrom: anObject description: aDescription
	aDescription shouldRememberKind ifFalse: [ ^ self ].
	self json 
		at: self class fieldType 
		put: anObject class name asString