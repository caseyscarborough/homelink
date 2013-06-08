package homelink
import homelink.ShoppingList
import org.apache.commons.codec.digest.DigestUtils;

class User {
	
	String username
	String password
	String firstName
	String lastName
	String email
	
    static constraints = {
		username(blank:false, size:3..20, unique:true)
		password(blank:false)
		firstName(blank:false)
		lastName(blank:false)
		email(blank:false)
    }
	
	String toString() {
		"${firstName} ${lastName}"
	}
	
	static String hashPassword(String password) {
		DigestUtils.shaHex(password)
	}
	
	ShoppingList[] getShoppingLists() {
		ShoppingList.findAllByOwner(this, [sort: "id", order: "asc"])
	}
	
	Reminder[] getReminders() {
		Reminder.findAllByOwner(this, [sort: "id", order: "asc"])
	}
}
