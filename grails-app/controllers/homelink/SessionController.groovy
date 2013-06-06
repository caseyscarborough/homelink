package homelink

class SessionController {

    def index() {
		redirect(action:"login")
	}
	
	def login() { 
		if(session.user != null) {
			redirect(controller:"home", action:"index")
		}
	}
	
	def handleLogin() {
		params.password = User.hashPassword(params.password)
		def user = User.findByUsernameAndPassword(params.username, params.password)
		if(!user) {
			flash.message = "Username/password combination not found."
			redirect(controller:"session", action:"login")
		} else {
			session.user = user
			flash.message = "Login successful."
			redirect(controller:"home", action:"index")
		}
	}
	
	def logout() {
		if(session.user != null) {
			session.user = null
			session.invalidate()
			flash.message = "Logout successful."
			redirect(controller:"session", action:"login")
		} else {
			redirect(controller:"session", action:"login")
		}
	}
}
