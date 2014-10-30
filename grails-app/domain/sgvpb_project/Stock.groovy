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
	def dataModificacao = new Date()
	//String usuarioModificacao = UserController.getUser()
	
	def beforeUpdate() {
		if (isDirty('quantidade')) {
				//new StockHistory(quantidade:this.quantidade, data:dataModificacao, user:UserContro).save()
				new StockHistory(user:usuario, quantidade:this.quantidade, data:dataModificacao, nome:nome, situacao:"Atualizado").save()
		}
	}
	def afterInsert(){
		new StockHistory(user:usuario, quantidade:this.quantidade, data:dataModificacao, nome:nome, situacao:"Inserido").save()
	}
	def beforeDelete(){
		new StockHistory(user:usuario, quantidade:this.quantidade, data:dataModificacao, nome:nome, situacao:"Deletado").save()
	}
}
