package sgvpb_project

class LoginTagLib {
    //static defaultEncodeAs = [taglib:'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
	def loginControl = {
	    if(session.user){	      		  
	      out << """${link(action:"logout", controller:"user", class:"login"){"Logout"}}""";
		  //out << "Hello ${session.user.person} "
		  out << '<script>alert("Bem Vindo!");</script>'
	    } else {
	      //out << """[${link(action:"login", controller:"user"){"Login"}}]"""
		  out << """${link(action:"login", controller:"user", class:"login"){"Login"}}"""
	    }
	}
}