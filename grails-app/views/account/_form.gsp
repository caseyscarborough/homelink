<%@ page import="homelink.User" %>

<table style="margin:0 auto;">
<tr class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<td><label for="username" style="float:right;"><g:message code="user.username.label" default="Username" /><span class="required-indicator">&nbsp;*&nbsp;</span></label></td>
	<td><g:textField name="username" required="" value="${userInstance?.username}" class="input-medium" />&nbsp;</td>
</tr>

<tr class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<td><label for="password" style="float:right;"><g:message code="user.password.label" default="Password" /><span class="required-indicator">&nbsp;*&nbsp;</span></label></td>
	<td><g:passwordField name="password" required="" value="${password}" class="input-medium" /></td>
</tr>

<tr class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<td><label for="email" style="float:right;"><g:message code="user.email.label" default="Email" /><span class="required-indicator">&nbsp;*&nbsp;</span></label></td>
	<td><g:textField name="email" required="" value="${userInstance?.email}" class="input-medium" /></td>
</tr>

<tr class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} required">
	<td><label for="firstName" style="float:right;"><g:message code="user.firstName.label" default="First Name" /><span class="required-indicator">&nbsp;*&nbsp;</span></label></td>
	<td><g:textField name="firstName" required="" value="${userInstance?.firstName}" class="input-medium" /></td>
</tr>

<tr class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} required">
	<td><label for="lastName" style="float:right;"><g:message code="user.lastName.label" default="Last Name" /><span class="required-indicator">&nbsp;*&nbsp;</span></label></td>
	<td><g:textField name="lastName" required="" value="${userInstance?.lastName}" class="input-medium" /></td>
</tr>
</table>

