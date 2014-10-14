package sgvpb_project

class EntryController {
	def scaffold = Entry
    def index() { }
	def beforeInterceptor = [action:this.&auth, except:["index", "list", "show"]]
	
	  def auth() {
		if(!session.user) {
		  redirect(controller:"user", action:"login")
		  return false
		}
	  }
	 		
}
