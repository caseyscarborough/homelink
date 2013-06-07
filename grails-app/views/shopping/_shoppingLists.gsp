<g:if test="${shoppingLists.size() > 0}">
	<g:each in="${shoppingLists}" var="shoppingList">
		<div id="shoppingList-${shoppingList.id}">
		<g:render template="shoppingList" collection="${shoppingList}" />
		</div>
		<g:formRemote onSuccess="document.getElementById('addItemNameField-${shoppingList.id}').value = '';" name="addItemForm" url="[controller:'shopping',action:'addItem',id:shoppingList.id]" method="POST" update="shoppingList-${shoppingList.id}" placeholder="add item">
			<g:textField id="addItemNameField-${shoppingList.id}" name="name" style="font-size: 11.9px; height:15.9px; width: 100px;" placeholder="Add an item..." />
			<g:submitButton name="addItem" value="Add Item" class="btn btn-default btn-small" />
		</g:formRemote>
	</g:each>
</g:if>
<g:else>
You do not have any shopping lists.
</g:else>