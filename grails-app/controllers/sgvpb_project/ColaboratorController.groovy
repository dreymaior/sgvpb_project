package sgvpb_project



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ColaboratorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Colaborator.list(params), model:[colaboratorInstanceCount: Colaborator.count()]
    }

    def show(Colaborator colaboratorInstance) {
        respond colaboratorInstance
    }

    def create() {
        respond new Colaborator(params)
    }

    @Transactional
    def save(Colaborator colaboratorInstance) {
        if (colaboratorInstance == null) {
            notFound()
            return
        }

        if (colaboratorInstance.hasErrors()) {
            respond colaboratorInstance.errors, view:'create'
            return
        }

        colaboratorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'colaborator.label', default: 'Colaborator'), colaboratorInstance.id])
                redirect colaboratorInstance
            }
            '*' { respond colaboratorInstance, [status: CREATED] }
        }
    }

    def edit(Colaborator colaboratorInstance) {
        respond colaboratorInstance
    }

    @Transactional
    def update(Colaborator colaboratorInstance) {
        if (colaboratorInstance == null) {
            notFound()
            return
        }

        if (colaboratorInstance.hasErrors()) {
            respond colaboratorInstance.errors, view:'edit'
            return
        }

        colaboratorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Colaborator.label', default: 'Colaborator'), colaboratorInstance.id])
                redirect colaboratorInstance
            }
            '*'{ respond colaboratorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Colaborator colaboratorInstance) {

        if (colaboratorInstance == null) {
            notFound()
            return
        }

        colaboratorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Colaborator.label', default: 'Colaborator'), colaboratorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'colaborator.label', default: 'Colaborator'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
