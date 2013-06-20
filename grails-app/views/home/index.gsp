<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome</title>
		<script type="text/javascript">
		function closeModal() {
			document.getElementById('closeModal').click();
		}
		</script>
	
	</head>
	<body>
	
	<div id="createAccountModal" class="modal hide fade">
		<g:render template="/account/createModal" />
	</div>
	
	<div class="container-fluid">
		<div class="row-fluid home-banner">
			<div class="span12">
				<div class="span10 offset1 home-banner-contents">
					<h1 style="border-bottom:none;">Welcome to <span style="color:#DC3522;">HomeLink!</span></h1>
					<g:if test="${flash.message}">
						<div id="message" class="message alert-default">
							${flash.message}
						</div>
					</g:if>
				</div>
			</div>
			<div class="row-fluid">
					<div class="span5 offset1">
					<p>HomeLink is a web application used to create to-do lists, shopping lists, reminders, 
					and chores for a group of users connected as a 'family'. It is written using the Grails web framework.</p>
					<p>Users will be able to create a 'family' that other users can connect to. When a new list, reminder, 
					or chore is created, the user will have the option to create the item for the family, or for 
					themselves. This will allow family members to post to-dos, chores, or other items for the entire 
					family to see, or just for personal use.</p>
					<p>The application is currently in the beginning stages of development, and more features 
					will be implemented with time.</p>
					</div>
					<div class="span4 offset1">
						<img src="${resource(dir: 'images', file: 'macbook.png')}" />
					</div>
				</div>
			</div>
		</div>
	</div><br>
	<div class="container-fluid">
		<div class="row-fluid">
			<g:if test="${session.user == null}">
			<div class="span5 offset2 get-started">
				<h3>Get started using Homelink in just minutes.</h3>
			</div>
			<div class="span3 create-account-button">
				<g:link controller="account" action="create"><button <%--a href="#createAccountModal"--%> class="btn btn-large btn-default" <%--data-toggle="modal" role="button"--%>>Create account</button></g:link>
				&nbsp;&nbsp;&nbsp;<g:link controller="session" action="login"><button class="btn btn-large btn-inverse">Login</button></g:link>
			</div>
			</g:if>
			<g:else>
			<div class="span8 offset2">
				<h3 style="text-align:center;">Welcome to your HomeLink, ${session.user.firstName}!</h3>
			</div>
			</g:else>
		</div>
	</div><br><br>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span10 offset1">
				<div class="span4 info">
					<h4><i class="icon-exclamation-sign icon"></i>&nbsp;&nbsp;Create Reminders</h4>
					<p>Create reminders to help you keep track of your most important affairs.
					Set up notifications to receive a text message or email before the time
					of your reminder.
					</p>
				</div>
				<div class="span4 info">
					<h4><i class="icon-folder-open icon"></i>&nbsp;&nbsp;Organize Your Life</h4>
					<p>Create to-do lists, shopping lists, and chores for your personal account
					or share them with your HomeLink family.
				</div>
				<div class="span4 info">
					<h4><i class="icon-list icon"></i>&nbsp;&nbsp;Keep Track of Lists</h4>
					<p>Create multiple types of lists, such as shopping lists, to-do lists,
					wish lists, and many more. Easily manage these through the web interface
					by adding, removing, and crossing off items.
					</p>
				</div>
			</div>
		</div>
	</div>
	</div>
	</body>
</html>
