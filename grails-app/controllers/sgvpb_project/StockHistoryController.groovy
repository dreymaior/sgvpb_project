package sgvpb_project



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StockHistoryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond StockHistory.list(params), model:[stockHistoryInstanceCount: StockHistory.count()]
    }

    def show(StockHistory stockHistoryInstance) {
        respond stockHistoryInstance
    }

    def create() {
        respond new StockHistory(params)
    }

    @Transactional
    def save(StockHistory stockHistoryInstance) {
        if (stockHistoryInstance == null) {
            notFound()
            return
        }

        if (stockHistoryInstance.hasErrors()) {
            respond stockHistoryInstance.errors, view:'create'
            return
        }

        stockHistoryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'stockHistory.label', default: 'StockHistory'), stockHistoryInstance.id])
                redirect stockHistoryInstance
            }
            '*' { respond stockHistoryInstance, [status: CREATED] }
        }
    }

    def edit(StockHistory stockHistoryInstance) {
        respond stockHistoryInstance
    }

    @Transactional
    def update(StockHistory stockHistoryInstance) {
        if (stockHistoryInstance == null) {
            notFound()
            return
        }

        if (stockHistoryInstance.hasErrors()) {
            respond stockHistoryInstance.errors, view:'edit'
            return
        }

        stockHistoryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'StockHistory.label', default: 'StockHistory'), stockHistoryInstance.id])
                redirect stockHistoryInstance
            }
            '*'{ respond stockHistoryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(StockHistory stockHistoryInstance) {

        if (stockHistoryInstance == null) {
            notFound()
            return
        }

        stockHistoryInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'StockHistory.label', default: 'StockHistory'), stockHistoryInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'stockHistory.label', default: 'StockHistory'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
