<%@ page import="homelink.*" %>
<html>
<head>
	<title>Shopping List</title>
	<meta name="layout" content="main"/>
	<script type="text/javascript">
	function strikeText(fieldID) {
	    fieldObj = document.getElementById(fieldID);
	    var style = (fieldObj.style.textDecoration!='line-through')?'line-through':'none';
	    fieldObj.style.textDecoration = style;
	    return;
	}
	</script>
</head>
<body>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span6 offset3 main">
		<h1>Shopping Lists</h1>
		<g:formRemote onSuccess="document.getElementById('addListNameField').value = '';" name="addListForm" url="[controller:'shopping', action:'addList']" method="POST" update="shoppingLists">
			<g:textField id="addListNameField" name="name" placeholder="Create a new list..." />
			<g:submitButton name="addList" value="Add List" class="btn btn-default" />
		</g:formRemote>
		<div id="shoppingLists">
			<g:render template="/shopping/shoppingLists" />
		</div>
		</div>
	</div>
</div>
</body>
</html>