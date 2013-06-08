package homelink

import org.springframework.dao.DataIntegrityViolationException

class AccountController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def index() {
		redirect(url:"/")
	}
	
    def create() {
		if(session.user != null) {
			redirect(controller:"home", action:"index")
		}
        [userInstance: new User(params)]
    }

    def save() {
		if(session.user != null) {
			redirect(controller:"home", action:"index")
		}
		def password = params.password
		params.password = User.hashPassword(params.password)
        def userInstance = new User(params)
        if (!userInstance.save(flush:true)) {
			def error
			if(params.username.size() < 3) {
				error = "Username must be at least three characters."
			} else if(params.username.size() > 20) {
				error = "Username must be 20 characters or less."
			} else if(User.findByUsername(params.username)) {
				error = "Username already taken. Please try again."
			}
            render(template: "/account/createModal", model:[userInstance: userInstance, error: error, password: password])
            return
        }

        flash.message = "Account successfully created. Please <g:link controller='session' action='login'>login</g:link>."
        redirect(controller: "session", action:"login")
    }
}
