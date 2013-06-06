<%@ page import="homelink.*" %>
<html>
<head>
	<title>Shopping List</title>
	<meta name="layout" content="main"/>
</head>
<body>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span6 offset3 main">
		<h1>Shopping Lists</h1>
			<g:if test="${shoppingLists.size() > 0}">
				<g:each in="${shoppingLists}" var="shoppingList">
					<div id="shoppingList-${shoppingList.id}">
					<g:render template="shoppingList" collection="${shoppingList}" />
					</div><br>
					<g:formRemote onSuccess="document.getElementById('addItemNameField-${shoppingList.id}').value = '';" name="addItemForm" url="[controller:'shopping',action:'addItem',id:shoppingList.id]" method="POST" update="shoppingList-${shoppingList.id}" placeholder="add item">
						<g:textField id="addItemNameField-${shoppingList.id}" name="name" /><br>
						<g:submitButton name="addItem" value="Add Item" class="btn btn-warning" />
					</g:formRemote><br>
				</g:each>
			</g:if>
			<g:else>
			You do not have any shopping lists.
			</g:else>
		</div>
	</div>
</div>
</body>
</html>