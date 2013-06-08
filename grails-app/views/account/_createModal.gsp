<g:formRemote name="createAccountForm" url="[controller:'account', action:'save']" update="createAccountModal" onSuccess="closeModal">
	<div class="modal-header">
		<button type="button" class="close pull-right" data-dismiss="modal">&times;</button>
		<h3>Create Account</h3>
	</div>
	<div class="modal-body">
		<g:if test="${flash.message}">
			<div class="message alert-default">
				${flash.message}
			</div>
		</g:if>
		<g:if test="${error != null}">
			<div class="alert alert-error">
				${error}
			</div>
		</g:if>
		<g:if test="${message != null}">
			<div class="alert alert-success">
				${message}
			</div>
		</g:if>
		<g:hasErrors bean="${userInstance}">
		<div class="message alert alert-error">
			<ul class="errors" role="alert">
				<g:eachError bean="${userInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
		</div>
		</g:hasErrors>
		<fieldset class="form">
			<g:render template="/account/form"/><br><br>
		</fieldset>
	</div>
	<div class="modal-footer">
		<a href="#" id="closeModal" class="btn" data-dismiss="modal">Close</a>
		<g:submitButton name="create" class="save btn btn-default" value="Create Account" />
	</div>
</g:formRemote>
