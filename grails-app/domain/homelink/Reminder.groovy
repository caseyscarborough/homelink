package homelink

class Reminder {
	String name
	String description
	User owner
	Date dateCreated
	Date remindAt
	boolean isComplete
	
	static belongsTo = User
	
    static constraints = {
		name(blank:false)
		description(maxSize:1000)
		remindAt()
		isComplete(defaultValue: false)
    }
	
	String toString() {
		name
	}
}
