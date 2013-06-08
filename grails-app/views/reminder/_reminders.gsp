<%@ page import="java.text.SimpleDateFormat" %>
<%
	SimpleDateFormat formatter = new SimpleDateFormat("EEEEE, MMMMM dd', 'YYYY' at 'hh:mm a")
	def timestamp = new Date()
%>
<g:if test="${reminders.size() > 0}">
<g:each in="${reminders}" status="i" var="reminder">
<div class="accordion" id="accordion" style="padding:0; margin:0;text-align:left;">
<div class="accordion-group" style="border:none;border-bottom:1px solid #e5e5e5">
<div class="accordion-heading">
	<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#${i+1}"><h4>${reminder}<span style="float:right;" id="reminder-${i}-close" class="close" 
			onclick="${remoteFunction(
				action: 'deleteReminder',
				id: reminder.id,
				update: [success: 'reminders']
			)}">&times;</span></h4></a>
	<div id="${i+1}" class="accordion-body collapse">
		<div class="accordion-inner" style="border-top:none;">
	    		<p<% if(timestamp > new Date(reminder.remindAt.getTime())) { println " style='color:red'" } %>>${formatter.format(reminder.remindAt.getTime())}</p>
	    		<p>${reminder.description}</p>
		</div>
	</div>
</div>
</div>
</div>
</g:each>
</g:if>
<g:else>
You do not have any reminders.
</g:else>