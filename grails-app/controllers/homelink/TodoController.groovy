package homelink

import org.springframework.dao.DataIntegrityViolationException;

class TodoController {

	def index() {
		if(session.user != null) {
			redirect(controller:"todo", action:"list")
		}
	}

	def list() {
		if(session.user != null) {
			[todoLists: session.user.getTodoLists()]
		}
	}

	def showList() {
		render params.id
	}

	def addItem() {
		def todoList = TodoList.get(params.id)
		new Todo(name:params.name, list:todoList, isNeeded:true).save(flush:true)
		render(template:"/todo/todoList", model:[todoList:todoList])
	}

	def addList() {
		def todoList = new TodoList(name: params.name, description:"", owner:session.user, items: [:])
		if(todoList.save(flush:true)) {
			render(template:"/todo/todoLists", model:[todoLists:session.user.getTodoLists()])
		}
	}

	def deleteItem(Long id) {
		def todoItem = Todo.get(id)
		if (!todoItem) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'reminder.label', default: 'Reminder'),
				id
			])
			redirect(action: "list")
			return
		}

		try {
			todoItem.delete(flush: true)
			render(template:"/todo/todoList", model:[todoList:todoItem.list])
		}
		catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [
				message(code: 'reminder.label', default: 'Reminder'),
				id
			])
			redirect(action: "list")
		}
	}

	def deleteList(Long id) {
		def todoList = TodoList.get(id)
		if(!todoList) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'reminder.label', default: 'Reminder'),
				id
			])
			redirect(action: "list")
			return
		}

		try {
			todoList.delete(flush: true)
			render(template:"/todo/todoLists", model:[todoLists:session.user.getTodoLists()])
		}
		catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [
				message(code: 'reminder.label', default: 'Reminder'),
				id
			])
			redirect(action: "list")
		}
	}

	def changeIsNeeded() {
		def todoItem = Todo.get(params.id)
		if(todoItem.isNeeded) {
			todoItem.isNeeded = false
		} else {
			todoItem.isNeeded = true
		}
	}
}