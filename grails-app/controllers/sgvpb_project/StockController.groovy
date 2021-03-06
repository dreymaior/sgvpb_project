package sgvpb_project



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StockController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Stock.list(params), model:[stockInstanceCount: Stock.count()]
    }

    def show(Stock stockInstance) {
        respond stockInstance
    }

    def create() {
        respond new Stock(params)
    }

    @Transactional
    def save(Stock stockInstance) {
        if (stockInstance == null) {
            notFound()
            return
        }

        if (stockInstance.hasErrors()) {
            respond stockInstance.errors, view:'create'
            return
        }

        stockInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'stock.label', default: 'Stock'), stockInstance.id])
                redirect stockInstance
            }
            '*' { respond stockInstance, [status: CREATED] }
        }
    }

    def edit(Stock stockInstance) {
        respond stockInstance
    }

    @Transactional
    def update(Stock stockInstance) {
        if (stockInstance == null) {
            notFound()
            return
        }

        if (stockInstance.hasErrors()) {
            respond stockInstance.errors, view:'edit'
            return
        }

        stockInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Stock.label', default: 'Stock'), stockInstance.id])
                redirect stockInstance
            }
            '*'{ respond stockInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Stock stockInstance) {

        if (stockInstance == null) {
            notFound()
            return
        }

        stockInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Stock.label', default: 'Stock'), stockInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'stock.label', default: 'Stock'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
		
	// --------- Restricao -----------
	
	def beforeInterceptor = [ action:this.&auth, except:[ 'index' ]]
	
	def auth(){
		if(!session.user) {
			redirect(controller:"user", action:"login")
			return false
		} else {
			if(!((session.user.person.role == "Administrador") || (session.user.person.role == "Funcionário"))){
				redirect(uri:"/")
				flash.message = "Voce nao possui autorizacao para acessar esta pagina!"
			} 
		}
	}

}
