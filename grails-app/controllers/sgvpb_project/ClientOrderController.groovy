package sgvpb_project



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ClientOrderController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ClientOrder.list(params), model:[clientOrderInstanceCount: ClientOrder.count()]
    }

    def show(ClientOrder clientOrderInstance) {
        respond clientOrderInstance
    }

    def create() {
        respond new ClientOrder(params)
    }

    @Transactional
    def save(ClientOrder clientOrderInstance) {
        if (clientOrderInstance == null) {
            notFound()
            return
        }

        if (clientOrderInstance.hasErrors()) {
            respond clientOrderInstance.errors, view:'create'
            return
        }

        clientOrderInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'clientOrder.label', default: 'ClientOrder'), clientOrderInstance.id])
                redirect clientOrderInstance
            }
            '*' { respond clientOrderInstance, [status: CREATED] }
        }
    }

    def edit(ClientOrder clientOrderInstance) {
        respond clientOrderInstance
    }

    @Transactional
    def update(ClientOrder clientOrderInstance) {
        if (clientOrderInstance == null) {
            notFound()
            return
        }

        if (clientOrderInstance.hasErrors()) {
            respond clientOrderInstance.errors, view:'edit'
            return
        }

        clientOrderInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ClientOrder.label', default: 'ClientOrder'), clientOrderInstance.id])
                redirect clientOrderInstance
            }
            '*'{ respond clientOrderInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ClientOrder clientOrderInstance) {

        if (clientOrderInstance == null) {
            notFound()
            return
        }

        clientOrderInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ClientOrder.label', default: 'ClientOrder'), clientOrderInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'clientOrder.label', default: 'ClientOrder'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}