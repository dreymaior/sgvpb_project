package sgvpb_project



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userInstanceCount: User.count()]
    }

    def show(User userInstance) {
        respond userInstance
    }

    def create() {
        respond new User(params)
    }

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	def scaffold = User
	
	def help = {}
	
	def login = {}
	
	def authenticate = {
		def user = User.findByLoginAndPassword(params.login, params.password)
		
		if(user){
		  session.user = user
		  flash.message = "Ola ${user.person}!"
		  redirect(uri:'/')
		}else{
		  flash.message = "Desculpe, ${params.login}. Login ou senha incorreta! Tente novamente ou contate o administrador."
		  redirect(action:"login")
		}
	}
	
	def logout = {
		flash.message = "Ate logo, ${session.user.person}"
		session.user = null
		redirect(uri:'/')
	}
	  
	   
	// --------- Restricao -----------
	  
	def beforeInterceptor = [ action:this.&auth, except:[ 'login', 'authenticate', 'help' ]]
	  
	def auth(){
		if(!session.user) {
			redirect(controller:"user", action:"login")
			return false
		} else {
			if(!(session.user.person.role == "Administrador")){
				redirect(uri:"/")
				flash.message = "Voce nao possui autorizacao para acessar esta pagina!"
			}
		}
	}
}
