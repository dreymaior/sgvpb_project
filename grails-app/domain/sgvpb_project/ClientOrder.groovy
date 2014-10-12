package sgvpb_project

//import org.apache.commons.collections.list.*;
//import org.apache.commons.collections.*;

class ClientOrder {
	String orderId
	Colaborator client
	Colaborator seller
	//List products = new ArrayList()
	static hasMany = [ products:Product ]
	
	static constraints = {
		orderId(blank:false,nullable:false) //primaryKey
		client(blank:false,nullable:false)
		seller(blank:false,nullable:false)
	}
	/*
	static mapping = {
		phones cascade:"all-delete-orphan"
	}
	
	def getPhonesList() {
		return LazyList.decorate(
			products,
			FactoryUtils.instantiateFactory(Product.class))
	}
	*/
	
	String toString(){
		orderId	
	}
}
