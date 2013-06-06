<br><h2>${shoppingList}</h2>
<ul>
	<g:each in="${shoppingList.items}" var="item">
		<li><g:if test="${item.isNeeded == true}">${item}</g:if><g:else><del>${item}</del></g:else></li>
	</g:each>
</ul>