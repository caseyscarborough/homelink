package homelink

class SecurityFilters {

    def filters = {
        all(controller:'*', action:'*') {
            before = {
				if(!session.user && !(controllerName == "home") && !(controllerName == "session")) {
					flash.message = "Please login first."
					redirect(controller:"session", action:"login")
				}
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
