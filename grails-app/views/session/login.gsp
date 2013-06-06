<html>
<head>
	<title>Login</title>
	<meta name="layout" content="main"/>
</head>
<body>
	<div class="container-fluid">
	<div class="row-fluid">
	<div class="span6 offset3 main">
	<h2>Login</h2>
	<g:if test="${flash.message}">
		<div id="message" class="alert">
			${flash.message}
		</div>
	</g:if><br>
	<g:form action="handleLogin" name="loginForm" method="post">
		<table style="margin:0 auto;">
			<tr>
				<td><label for="login">Username:&nbsp;</label></td>
				<td><g:textField name="username" value='${params.username}' /></td>
			</tr>
			<tr>
				<td><label for="password">Password:</label></td>
				<td><g:passwordField name="password" value='' /></td>
			<tr>
		</table><br>
		<g:actionSubmit class="btn btn-warning btn-large" value="Login" action="handleLogin" />
	</g:form>
	</div>
	</div>
	</div>
</body>
</html>