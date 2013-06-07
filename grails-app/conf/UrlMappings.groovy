class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller:"home", action:"index")
		"500"(view:"/error")
		"/shopping/list/$id"(controller:"shopping", action:"showList", id: id)
		"/shopping/list/$id/addItem"(controller:"shopping", action:"addItem", id: id)
		"/shopping"(controller:"shopping", action:"index")
		"/new-account"(controller:"account", action:"create")
	}
}
