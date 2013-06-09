<%@ page import="homelink.User" %>
<g:if test="${todoLists.size() > 0}">
<div class="accordion" id="accordion">
	<g:each in="${todoLists}" status="i" var="todoList">
		<div class="accordion-group">
		  <div class="accordion-heading" style="">
		    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#${i+1}"><h3>${todoList}&nbsp;<span style="float:right;" id="list-${todoList.id}-close" class="close" 
			onclick="${remoteFunction(
				action: 'deleteList',
				id: todoList.id,
				update: [success: 'todoLists']
			)}">&times;</span></h3></a>
		  </div>
		  <div id="${i+1}" class="accordion-body collapse<% if(i == session.user.getTodoLists().size()-1){println " in" }%>">
		    <div id="todoList-${todoList.id}" class="accordion-inner">
		     <g:render template="todoList" collection="${todoList}" /></div>
		     <g:formRemote onSuccess="document.getElementById('addItemNameField-${todoList.id}').value = '';" name="addItemForm" url="[controller:'todo',action:'addItem',id:todoList.id]" method="POST" update="todoList-${todoList.id}" placeholder="add item">
				<div class="input-append">
					<g:textField id="addItemNameField-${todoList.id}" class="addItemField" name="name" placeholder="Add an item..." />
					<g:submitButton name="addItem" value="Add Item" class="btn btn-default btn-small addItemButton" />
				</div>
			</g:formRemote>
		  </div>
		</div>
	</g:each>
</div>
</g:if>
<g:else>
You do not have any todo lists.
</g:else>

