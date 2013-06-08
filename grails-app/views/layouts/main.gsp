<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>HomeLink · <g:layoutTitle default="HomeLink"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link href="/homelink/css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="/homelink/css/main.css" rel="stylesheet" type="text/css" media="screen">
		<link href="/homelink/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" media="screen">
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script src="/homelink/js/bootstrap.min.js"></script>
		<script src="/homelink/js/application.js"></script>
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		<g:render template="/layouts/navbar" />
		<g:layoutBody/>
		<g:render template="/layouts/footer" />
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<r:layoutResources />
	</body>
</html>
