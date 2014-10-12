package sgvpb_project

class User {
	String username
	String password
	Colaborator person
	
	String toString(){
		username
	}
	
	static constraints = {
		username(blank:false, nullable:false, unique:true)
		password(password:true)
	}
}
