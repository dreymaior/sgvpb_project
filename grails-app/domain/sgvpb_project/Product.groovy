package sgvpb_project

class Product {
	//int index
	String productId
	String descricao
	float valorUnit
	String tipo
	String estampa
	String cor
	float pcgLucro
	boolean deleted
	static transients = [ 'deleted' ]
	static belongsTo = [ clientOrder:ClientOrder ] 
	
	static constraints = {
		//index(blank:false)
		productId(nullable:false, blank:false)
		descricao(nullable:false, blank:false)
		tipo(nullable:false, blank:false)
		estampa(nullable:false, blank:false)
		cor(nullable:false, blank:false)
		valorUnit(nullable:false, blank:false, max:999F, scale:2)
		pcgLucro(nullable:false, blank:false, max:100F, scale:2)
	}
	/*
	static mapping = {
		index column:"product_index"
	}
	*/
	
	String toString() {
		productId
	}
}
