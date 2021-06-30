initialization
initialize 
	super initialize.
	preCommitHandlers := OrderedCollection new.
	postCommitHandlers := OrderedCollection new