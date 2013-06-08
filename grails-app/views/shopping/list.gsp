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
		<h1 style="text-align:left">Shopping Lists</h1>
		<br>
		<div id="shoppingLists">
			<g:render template="/shopping/shoppingLists" />
		</div>
		<br><br>
		<g:formRemote onSuccess="document.getElementById('addListNameField').value = '';" name="addListForm" url="[controller:'shopping', action:'addList']" method="POST" update="shoppingLists">
			<div class="input-append">
				<g:textField id="addListNameField" name="name" placeholder="Create a new shopping list..." />
				<g:submitButton name="addList" value="Add List" class="btn btn-default" />
			</div>
		</g:formRemote>
		</div>
	</div>
</div>
</body>
</html>