class UrlMappings {

	static mappings = {
		"/"(controller:"home", action:"index")
		"500"(view:"/error")
		"/shopping/list/$id"(controller:"shopping", action:"showList", id: id)
		"/shopping/list/$id/add-item"(controller:"shopping", action:"addItem", id: id)
		"/shopping"(controller:"shopping", action:"index")
		"/shopping"(controller:"shopping", action:"list")
		"/todos"(controller:"todo", action:"index")
		"/todos"(controller:"todo", action:"list")
//		"/reminders"(controller:"reminder", action:"index")
//		"/reminders"(controller:"reminder", action:"list")
		"/reminders"(controller:"reminder") {
			action = [GET: "list"]
		}
		
		"/reminders/$id"(controller:"reminder") {
			action = [POST: "addReminder", DELETE: "deleteReminder"]
		}
		"/new-account"(controller:"account", action:"create")
		"/login"(controller:"session", action:"login")
		"/logout"(controller:"session", action:"logout")
		
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
	}
}
