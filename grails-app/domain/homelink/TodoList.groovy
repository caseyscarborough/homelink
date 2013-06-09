package homelink

import java.util.Date;

class TodoList {

    String name
	String description
	Date dateCreated
	User owner
	
	static hasMany = [todos: Todo]
	static belongsTo = User
	
    static constraints = {
		name(blank:false, maxSize:50)
		description(maxSize:1000)
    }
	
	static mapping = {
		todos sort: "id", order: "asc"
	}
	
	String toString() {
		name
	}
}
