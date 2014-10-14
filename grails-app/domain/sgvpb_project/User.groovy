package sgvpb_project

class User {
	String login
	String password
	Colaborator person
	
	String toString(){
		login
	}
	
	static hasMany = [entries:Entry]
	
	static constraints = {
		login(unique:true)
		password(password:true)
	}
}
