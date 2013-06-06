package homelink

class ShoppingItem {
	
	String name
	ShoppingList list
	boolean isNeeded
	
	static belongsTo = ShoppingList
	
    static constraints = {
		name(blank:false)
		isNeeded(defaultValue:true)
    }
	
	String toString() {
		name
	}
}
