initialization
setUpRepository
	"Hook: subclasses can override with special ways of building the test repository"

	repository := VOMongoRepository 
		host: VOMongoRepository defaultHost 
		database: 'Voyage-Tests'.
	repository debug: true.