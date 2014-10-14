package sgvpb_project

class Stock {
	double quantidade = 0;
	String nome;
	int stockId;
	
	static constraints = {
		stockId(nullable:false, blank:false)
		nome(nullable:false, blank:false)
		quantidade(nullable:true, blank:true)
	}
}
