package sgvpb_project

class StockHistory {
	String user
	Date data
	Double quantidade
	String descricao
	
	static constraints ={
		user(nullable:false, blank:false);
		data(nullable:false, blank:false);
		quantidade(nullable:false,blank:false);
		descricao(blank:false);
	}
	
	
	
	

}
