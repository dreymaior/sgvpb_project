package sgvpb_project

class Colaborator {
	String firstName
	String lastName
	Date birthDate
	String role
	String email
	String phone1
	String phone2
	String street
	String number
	String complement
	String district
	String city
	String state
	String country
	String postalCode
	boolean deleted
	
	static transients = [ 'deleted' ]
	
	static constraints = {
		firstName(blank:false, nullable:false)
		lastName(blank:false, nullable:false)
		birthDate(blank:false, nullable:false)
		role(blank:false, nullable:false, inList: ["Administrador", "Cliente", "Funcionário", "Vendedor"])
		email(mail:true, blank:false)
		phone1(blank:false, nullable:false)
		phone2(blank:true, nullable:true)
		street(blank:false, nullable:false)
		number(blank:false, nullable:false)
		complement(nullable:true, blank:true)
		district(blank:false, nullable:false)
		city(blank:false, nullable:false)
		state(blank:false, nullable:false)
		country(blank:false, nullable:false)
		postalCode(cep:true, blank:false, nullable:false)
	}
	
	def String toString(){
		return "${firstName} + ${lastName}"
	}
}
