<%@ page import="homelink.*" %>
<html>
<head>
	<title>Reminders</title>
	<meta name="layout" content="main"/>
	<script type="text/javascript">
	function clearFields() {
		document.getElementById('addReminderField').value = '';
		document.getElementById('addReminderDescription').value = '';
		document.getElementById('addReminderDate').value = '';
	}
	</script>
</head>
<body>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span6 offset3 main">
		<h1 style="text-align:left">Reminders</h1>
		<br>
		<div id="reminders">
			<g:render template="/reminder/reminders" />
		</div>
		<br><br>
		<g:formRemote onSuccess="clearFields();" name="addReminderForm" style="clear:both;" url="[controller:'reminder', action:'addReminder']" method="POST" update="reminders">
			<g:textField style="width:225px;" id="addReminderField" name="name" placeholder="Name..." /><br>
			<g:textArea style="width:225px;" id="addReminderDescription" name="description" placeholder="Description..." /><br>
			<input style="width:225px;" id="addReminderDate" type="datetime-local" name="remindAt" /><br>
			<g:submitButton style="width:240px;" name="addReminder" value="Add New Reminder" class="btn btn-default" />
		</g:formRemote>
		</div>
	</div>
</div>
</body>
</html>