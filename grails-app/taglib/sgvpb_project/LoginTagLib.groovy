package sgvpb_project

class LoginTagLib {
    static defaultEncodeAs = [taglib:'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
	def loginControl = {
	    if(session.user){
	      out << "Hello ${session.user.person} "
	      out << """[${link(action:"logout", controller:"user"){"Logout"}}]"""
	    } else {
	      out << """[${link(action:"login", controller:"user"){"Login"}}]"""
	    }
	}
}
