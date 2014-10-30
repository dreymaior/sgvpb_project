package sgvpb_project


class ClientOrder {
	String orderId
	Colaborator client
	Colaborator seller
	static hasMany = [ products:Product ]
	
	static constraints = {
		orderId(blank:false,nullable:false)
		client(blank:false,nullable:false)
		seller(blank:false,nullable:false)
	}
	
	String toString(){
		orderId	
	}
}
