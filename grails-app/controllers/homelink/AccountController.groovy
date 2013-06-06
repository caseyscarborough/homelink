package homelink

import org.springframework.dao.DataIntegrityViolationException

class AccountController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def create() {
        [userInstance: new User(params)]
    }

    def save() {
		params.password = User.hashPassword(params.password)
        def userInstance = new User(params)
        if (!userInstance.save(flush:true)) {
			flash.message = "There was an error creating the account."
            render(view: "create", model:[userInstance: userInstance])
            return
        }

        flash.message = "Account successfully created. Please login."
        redirect(controller: "session", action:"login")
    }
}
