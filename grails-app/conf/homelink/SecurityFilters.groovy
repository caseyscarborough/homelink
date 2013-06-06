package homelink

class SecurityFilters {

    def filters = {
        all(controller:'*', action:'*') {
            before = {
				if(!session.user && !(controllerName == "home") && !(controllerName == "session") && !((controllerName == "account") && (actionName == "create" || actionName == "save"))) {
					flash.message = "Please login first."
					def targetURL = request.forwardURI - request.contextPath
					redirect(controller:"session", action:"login", params:[target:targetURL])
				}
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
