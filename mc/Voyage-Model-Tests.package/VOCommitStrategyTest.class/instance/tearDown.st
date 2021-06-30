running
tearDown
	"Reset the DB after each test"
	"self repository dropDatabase"

	super tearDown.

	(VOTestObject allSubclasses
		collect: [ :each | each persistentClass ] as: Set)
		do: [ :each | repository removeAll: each ].
		
	Smalltalk garbageCollect.
