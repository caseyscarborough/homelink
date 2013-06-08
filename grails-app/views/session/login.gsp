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
	<h2>Login</h2>
	<g:if test="${flash.message}">
		<div class="message alert-default">
			${flash.message}
		</div>
	</g:if>
	<g:form action="handleLogin" name="loginForm" method="post">
		<table style="margin:0 auto;">
			<tr>
				<td><label for="login">Username:&nbsp;</label></td>
				<td><g:textField name="username" value='${params.username}' style="width:140px"/></td>
			</tr>
			<tr>
				<td><label for="password">Password:</label></td>
				<td><g:passwordField name="password" value='' style="width:140px"/></td>
				<g:hiddenField name="redirectURL" value="${params.target}"/>
			<tr>
		</table>
		<br>
		<p>Need an account? Click <g:link controller="account" action="create">here</g:link>.<br><br>
		<g:actionSubmit class="btn btn-default btn-large" value="Login" action="handleLogin" />
	</g:form>
	</div>
	</div>
	</div>
</body>
</html>