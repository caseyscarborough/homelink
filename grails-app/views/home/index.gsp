<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
	</head>
	<body>
		<div class="row-fluid">
			<div class="span8 offset2 main">
				<h1>Welcome to HomeLink!</h1>
				<g:if test="${flash.message}">
					<div id="message" class="message alert">
						${flash.message}
					</div>
				</g:if>
				<p>HomeLink is a web application used to create to-do lists, shopping lists, reminders, 
				and chores for a group of users connected as a 'family'. It is written using the Grails web framework.</p>
				<p>Users will be able to create a 'family' that other users can connect to. When a new list, reminder, 
				or chore is created, the user will have the option to create the item for the family, or for 
				themselves. This will allow family members to post to-dos, chores, or other items for the entire 
				family to see, or just for personal use.</p>
				<p>The application is currently in the beginning stages of development, and more features 
				will be implemented with time.</p>

				<div id="controller-list" role="navigation">
					<h2>Available Controllers:</h2>
					<ul style="list-style-type:none;">
						<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
							<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.logicalPropertyName.capitalize()}</g:link></li>
						</g:each>
					</ul>
				</div>
			</div>
		</div>
	</body>
</html>
