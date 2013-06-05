<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="css/main.css" rel="stylesheet" type="text/css" media="screen">
		<script src="js/bootstrap.min.js"></script>
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		<nav class="navbar">
			<div class="navbar-inner">
				<g:link controller="home" action="index" class="brand">HomeLink</g:link>
				<ul class="nav">
					<li class="active"><g:link controller="home" action="index" class="brand">Home</g:link></li>
				</ul>
			</div>
		</nav>
		<div class="container-fluid">
		<g:layoutBody/>
		</div>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<g:javascript library="jquery"/>
		<r:layoutResources />
	</body>
</html>
