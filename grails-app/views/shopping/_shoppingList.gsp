<br><h2>${shoppingList}</h2>
<ul>
	<g:each in="${shoppingList.items}" var="item">
		<li id="item-${item.id}">
		<g:if test="${item.isNeeded == true}">${item}</g:if>
		<g:else><del>${item}</del></g:else>&nbsp;&nbsp;
		<a id="item-${item.id}-close" class="close" 
			onclick="${remoteFunction(
				action: 'deleteItem',
				id: item.id,
				update: [success: 'shoppingList-' + shoppingList.id]
			)}">&times;</a>
		</li>
	</g:each>
</ul>