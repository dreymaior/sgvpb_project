package sgvpb_project

class Stock {
	//static hasMany = [history: StockHistory];
	double quantidade = 0;
	String nome;
	String usuario;
	int stockId;
	
	static constraints = {
		stockId(nullable:false, blank:false)
		nome(nullable:false, blank:false)
		quantidade(nullable:true, blank:true)
	}
	
	def beforeUpdate() {
		if (isDirty('quantidade')) {
				history.add(new StockHistory());
				//new StockHistory(user:session.user.person);
		}
	}

}
