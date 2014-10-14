package sgvpb_project

class Entry {
	static belongsTo = [author:User]
	static constraints = {
		title()
		summary(maxSize:1000)
		dateCreated()
		lastUpdated()
	  }
	  
	  static mapping = {
		sort "lastUpdated":"desc"
	  }
		
	  String title
	  String summary
	  Date dateCreated
	  Date lastUpdated
}
