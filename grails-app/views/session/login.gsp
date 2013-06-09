<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<meta name="layout" content="main"/>
</head>
<body>
	<div class="container-fluid">
	<div class="row-fluid">
	<div class="span6 offset3 main">
	<h1 style="text-align:left;">Login</h1><br>
	<g:if test="${flash.message}">
		<div class="message alert-default">
			${flash.message}<a class="close" data-dismiss="alert" href="#">&times;</a>
		</div>
	</g:if>
	<g:form action="handleLogin" name="loginForm" method="post">
		<table style="margin:0 auto;">
			<tr>
				<td><label for="login">Username:&nbsp;</label></td>
				<td><g:textField name="username" class="input-medium" value='' /></td>
			</tr>
			<tr>
				<td><label for="password">Password:</label></td>
				<td><g:passwordField name="password" class="input-medium" value='' /></td>
				<g:hiddenField name="redirectURL" value="${params.target}"/>
			<tr>
		</table>
		<br>
		<p>Need an account? Click <g:link controller="account" action="create">here</g:link>.<br><br>
		<g:submitButton name="loginButton" class="btn btn-default btn-large" value="Login" />
	</g:form>
	</div>
	</div>
	</div>
</body>
</html>