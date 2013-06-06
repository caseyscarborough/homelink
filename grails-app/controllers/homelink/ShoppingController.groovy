package homelink

class ShoppingController {

    def index() {
		redirect(controller:"shopping", action:"list")
	}
	
	def list() {
		if(session.user != null) {
			[shoppingLists: session.user.getShoppingLists()]
		}
	}
	
	def showList() {
		render params.id
	}
	
	def addItem() {
		def shoppingList = ShoppingList.get(params.id)
		new ShoppingItem(name:params.name, list:shoppingList, isNeeded:true).save()
		render(template:"/shopping/shoppingList", model:[shoppingList:shoppingList])
	}
}
