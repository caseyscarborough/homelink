package homelink

class Todo {

    String name
	TodoList list
	boolean isNeeded
	
	static belongsTo = TodoList
	
    static constraints = {
		name(blank:false)
		isNeeded(defaultValue:true)
    }
	
	String toString() {
		name
	}
}
