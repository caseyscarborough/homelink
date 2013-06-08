<%@ page import="homelink.User" %>
<!DOCTYPE html>
<html>
<head>
	<title>Create Account</title>
	<meta name="layout" content="main"/>
</head>
<body>
	<div class="container-fluid">
	<div class="row-fluid">
	<div class="span6 offset3 main">
	<h1 style="text-align:left">Create Account</h1><br>
	<g:if test="${flash.message}">
		<div class="message alert-default">
			${flash.message}
		</div>
	</g:if>
	<%--<g:hasErrors bean="${userInstance}">
	<div class="message alert alert-error">
		<ul class="errors" role="alert">
			<g:eachError bean="${userInstance}" var="error">
			<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
			</g:eachError>
		</ul>
	</div>
	</g:hasErrors>--%>
	<g:form action="save">
		<fieldset class="form">
			<g:render template="form"/>
		</fieldset><br>
		<fieldset class="buttons">
			<g:submitButton name="create" class="save btn btn-default btn-large" value="Create Account" />
		</fieldset>
	</g:form>
	</div>
	</div>
	</div>
</body>
</html>