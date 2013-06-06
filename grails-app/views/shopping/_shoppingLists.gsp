<g:if test="${shoppingLists.size() > 0}">
	<g:each in="${shoppingLists}" var="shoppingList">
		<div id="shoppingList-${shoppingList.id}">
		<g:render template="shoppingList" collection="${shoppingList}" />
		</div><br>
		<g:formRemote onSuccess="document.getElementById('addItemNameField-${shoppingList.id}').value = '';" name="addItemForm" url="[controller:'shopping',action:'addItem',id:shoppingList.id]" method="POST" update="shoppingList-${shoppingList.id}" placeholder="add item">
			<g:textField id="addItemNameField-${shoppingList.id}" name="name" /><br>
			<g:submitButton name="addItem" value="Add Item" class="btn btn-default" />
		</g:formRemote><br>
	</g:each>
</g:if>
<g:else>
You do not have any shopping lists.
</g:else>