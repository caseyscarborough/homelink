package homelink

import org.springframework.dao.DataIntegrityViolationException;

class ShoppingController {

    def index() {
		if(session.user != null) {
			redirect(controller:"shopping", action:"list")
		}
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
	
	def addList() {
		def shoppingList = new ShoppingList(name: params.name, description:"", owner:session.user, items: [:])
		if(shoppingList.save()) {
			render(template:"/shopping/shoppingLists", model:[shoppingLists:session.user.getShoppingLists()])
		}
	}
	
	def deleteItem(Long id) {
		def shoppingItem = ShoppingItem.get(id)
        if (!shoppingItem) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'reminder.label', default: 'Reminder'), id])
            redirect(action: "list")
            return
        }

        try {
            shoppingItem.delete(flush: true)
            render(template:"/shopping/shoppingList", model:[shoppingList:shoppingItem.list])
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'reminder.label', default: 'Reminder'), id])
            redirect(action: "list")
        }
	}
	
	def deleteList(Long id) {
		def shoppingList = ShoppingList.get(id)
		if(!shoppingList) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'reminder.label', default: 'Reminder'), id])
			redirect(action: "list")
			return
		}
		
		try {
			shoppingList.delete(flush: true)
			render(template:"/shopping/shoppingLists", model:[shoppingLists:session.user.getShoppingLists()])
		}
		catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'reminder.label', default: 'Reminder'), id])
			redirect(action: "list")
		}
	}
	
	def changeIsNeeded() {
		def shoppingItem = ShoppingItem.get(params.id)
		if(shoppingItem.isNeeded) {
			shoppingItem.isNeeded = false
		} else {
			shoppingItem.isNeeded = true
		}
	}
}
