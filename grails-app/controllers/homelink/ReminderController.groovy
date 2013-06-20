package homelink

import java.text.SimpleDateFormat;

import org.springframework.dao.DataIntegrityViolationException;

class ReminderController {

    static defaultAction = "list"
	
	def list() {
		if(session.user != null) {
			[reminders: session.user.getReminders()]
		}
	}
	
	def addReminder() {
		if(params.remindAt != null && params.name != null) {
			SimpleDateFormat dateParser = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm")
			Date remindAt = dateParser.parse(params.remindAt)
			def reminder = new Reminder(name: params.name, description: params.description, owner: session.user, remindAt: remindAt)
			if(reminder.save(flush:true)) {
				render(template: "/reminder/reminders", model: [reminders: session.user.getReminders()])
			}
		}
	}
	
	def deleteReminder(Long id) {
		def reminder = Reminder.get(id)
		if(!reminder) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'reminder.label', default: 'Reminder'), id])
			render(action: "list")
			return
		}
		
		try {
			reminder.delete(flush: true)
			render(template:"/reminder/reminders", model:[reminders:session.user.getReminders()])
		}
		catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'reminder.label', default: 'Reminder'), id])
			redirect(action: "list")
		}
	}
}
