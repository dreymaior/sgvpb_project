package sgvpb_project

class StockHistory {

	
	String user
	Date data 
	Double quantidade
	String nome
	String situacao
	//String descricao
	
	static constraints ={
		user(nullable:true, blank:true);
		data(nullable:false, blank:false);
		quantidade(nullable:false,blank:false);
		nome(nullable:false,blank:false);
		situacao(nullable:false,blank:false);
		//descricao (blank:false);

	}
}
