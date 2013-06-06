import homelink.*;

class BootStrap {

    def init = { servletContext ->
		
		if(User.count() == 0) {
			println "Creating users..."
			def casey = new User(username:"casey", password: User.hashPassword("password"), firstName:"Casey", lastName:"Scarborough", email:"caseyscarborough@gmail.com").save()
			def groceriesList = new ShoppingList(name:"Groceries", description:"List of items to get from the grocery store", items:[:], owner:casey).save()
			new ShoppingItem(name:"Bread", list:groceriesList, isNeeded:true).save()
			new ShoppingItem(name:"Milk", list:groceriesList, isNeeded:true).save()
			new ShoppingItem(name:"Eggs", list:groceriesList, isNeeded:true).save()
			new ShoppingItem(name:"Toothpaste", list:groceriesList, isNeeded:false).save()
			new ShoppingItem(name:"Toilet Paper", list:groceriesList, isNeeded:true).save()
			def partsList = new ShoppingList(name:"Parts", description:"List of parts to get from the auto-parts store", items:[:], owner:casey).save()
			new ShoppingItem(name:"Air Filter", list:partsList, isNeeded:true).save()
			new ShoppingItem(name:"Oil Filter", list:partsList, isNeeded:true).save()
			new ShoppingItem(name:"5QT Synthetic Oil", list:partsList, isNeeded:true).save()
			new ShoppingItem(name:"Microfiber Towels", list:partsList, isNeeded:true).save()
		}
		
    }
    def destroy = {
    }
}
