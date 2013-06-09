import homelink.*;

class BootStrap {

    def init = { servletContext ->
		
		if(User.count() == 0) {
			println "Creating users..."
			def casey = new User(username:"casey", password: User.hashPassword("password"), firstName:"Casey", lastName:"Scarborough", email:"caseyscarborough@gmail.com").save()
			
			println "Creating shopping lists..."
			def groceriesList = new ShoppingList(name:"Groceries", description:"List of items to get from the grocery store", items:[:], owner:casey).save()
			def partsList = new ShoppingList(name:"Parts", description:"List of parts to get from the auto-parts store", items:[:], owner:casey).save()
			
			println "Creating shopping items..."
			new ShoppingItem(name:"Bread", list:groceriesList, isNeeded:true).save()
			new ShoppingItem(name:"Milk", list:groceriesList, isNeeded:true).save()
			new ShoppingItem(name:"Eggs", list:groceriesList, isNeeded:true).save()
			new ShoppingItem(name:"Toothpaste", list:groceriesList, isNeeded:true).save()
			new ShoppingItem(name:"Toilet Paper", list:groceriesList, isNeeded:true).save()
			new ShoppingItem(name:"Air Filter", list:partsList, isNeeded:true).save()
			new ShoppingItem(name:"Oil Filter", list:partsList, isNeeded:true).save()
			new ShoppingItem(name:"5QT Synthetic Oil", list:partsList, isNeeded:true).save()
			new ShoppingItem(name:"Microfiber Towels", list:partsList, isNeeded:true).save()
			
			println "Creating reminders..."
			new Reminder(name:"Take out the trash", description:"Don't forget to take the trash out.", owner:casey, remindAt: new Date(113, 5, 28)).save()
			new Reminder(name:"Finish school project", description:"Finish that one project for school.", owner:casey, remindAt: new Date(113, 7, 30)).save()
			new Reminder(name:"Call mom", description:"Call mom about plans for the holiday.", owner:casey, remindAt: new Date(113, 10, 20)).save()
			
			println "Creating todo lists..."
			def homeList = new TodoList(name:"Home", description:"List of things to do around the house.", items:[:], owner:casey).save()
			def workList = new TodoList(name:"Work", description:"List of things to do at work.", items:[:], owner:casey).save()
			def schoolList = new TodoList(name:"School", description:"List of things to do at school.", items:[:], owner:casey).save()
			
			println "Creating todo items..."
			new Todo(name:"Take out trash", list:homeList, isNeeded:true).save()
			new Todo(name:"Fix leaky pipe", list:homeList, isNeeded:true).save()
			new Todo(name:"Change oil in car", list:homeList, isNeeded:true).save()
			new Todo(name:"Upgrade hard drive on work computer", list:workList, isNeeded:true).save()
			new Todo(name:"Clean the office", list:workList, isNeeded:true).save()
			new Todo(name:"Fire that one guy", list:workList, isNeeded:true).save()
			new Todo(name:"Finish group project", list:schoolList, isNeeded:true).save()
			new Todo(name:"Talk to advisor", list:schoolList, isNeeded:true).save()
			new Todo(name:"Register for that one class", list:schoolList, isNeeded:true).save()
		}
		
    }
    def destroy = {
    }
}
