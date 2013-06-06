package homelink

class ShoppingList {

	String name
	String description
	Date dateCreated
	User owner
	
	static hasMany = [items: ShoppingItem]
	static belongsTo = User
	
    static constraints = {
		name(blank:false, maxSize:50)
		description(maxSize:1000)
    }
	
	static mapping = {
		items sort: "id", order: "asc"
	}
	
	String toString() {
		name
	}
}
