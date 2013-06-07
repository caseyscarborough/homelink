<h2>${shoppingList}&nbsp;<a id="list-${shoppingList.id}-close" class="close" 
			onclick="${remoteFunction(
				action: 'deleteList',
				id: shoppingList.id,
				update: [success: 'shoppingLists']
			)}">&times;</a></h2>
<ul>
	<g:each in="${shoppingList.items}" var="item">
		<li id="item-${item.id}">
		<g:if test="${item.isNeeded == true}"><span id="item-${item.id}-name" onclick="strikeText('item-${item.id}-name'); ${remoteFunction(
				action:'changeIsNeeded', id: item.id, params:[id:item.id]
			)}">${item}</span></g:if>
		<g:else><span style="text-decoration:line-through;" id="item-${item.id}-name" onclick="strikeText('item-${item.id}-name'); ${remoteFunction(
				action:'changeIsNeeded', id: item.id, params:[id:item.id]
			)}">${item}</span></g:else>&nbsp;&nbsp;
		<a id="item-${item.id}-close" class="close" 
			onclick="${remoteFunction(
				action: 'deleteItem',
				id: item.id,
				update: [success: 'shoppingList-' + shoppingList.id]
			)}">&times;</a>
		</li>
	</g:each>
</ul>