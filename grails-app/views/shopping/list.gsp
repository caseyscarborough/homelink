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
		<g:formRemote onSuccess="document.getElementById('addListNameField').value = '';" name="addListForm" url="[controller:'shopping', action:'addList']" method="POST" update="shoppingLists" placeholder="add list">
			<g:textField id="addListNameField" name="name" />
			<g:submitButton name="addList" value="Add List" class="btn btn-default" />
		</g:formRemote><br>
		<div id="shoppingLists">
			<g:render template="/shopping/shoppingLists" />
		</div>
		</div>
	</div>
</div>
</body>
</html>