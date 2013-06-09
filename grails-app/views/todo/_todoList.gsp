<div class="todoList">
<ul>
	<g:each in="${todoList.todos}" var="todo">
		<li id="todo-${todo.id}">
		<g:if test="${todo.isNeeded == true}"><span id="todo-${todo.id}-name" onclick="strikeText('todo-${todo.id}-name'); ${remoteFunction(
				action:'changeIsNeeded', id: todo.id, params:[id:todo.id]
			)}">${todo}</span></g:if>
		<g:else><span style="text-decoration:line-through;" id="todo-${todo.id}-name" onclick="strikeText('todo-${todo.id}-name'); ${remoteFunction(
				action:'changeIsNeeded', id: todo.id, params:[id:todo.id]
			)}">${todo}</span></g:else>&nbsp;&nbsp;
		<a id="todo-${todo.id}-close" class="close" 
			onclick="${remoteFunction(
				action: 'deleteItem',
				id: todo.id,
				update: [success: 'todoList-' + todoList.id]
			)}">&times;</a>
		</li>
	</g:each>
</ul>
</div>