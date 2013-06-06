<nav class="navbar">
	<div class="navbar-inner">
		<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        	<span class="icon-bar"></span>
        	<span class="icon-bar"></span>
        	<span class="icon-bar"></span>
		</a>
		<g:link controller="home" action="index" class="brand">HomeLink</g:link>
		<div class="nav-collapse">	
			<ul class="nav">
				<li>&nbsp;</li>
				<g:if test="${controllerName == "home"}"><li class="active"></g:if><g:else><li></g:else>
					<g:link controller="home" action="index">Home</g:link>
				</li>
				<g:if test="${controllerName == "shopping"}"><li class="active"></g:if><g:else><li></g:else>
					<g:link controller="shopping" action="index">Shopping</g:link>
				</li>
			</ul>
			<ul class="nav pull-right">
				<g:if test="${session.user}">
				<li><g:link controller="session" action="logout">Logout</g:link></li>
				</g:if>
				<g:else>
				<li><g:link controller="session" action="login">Login</g:link></li>
				</g:else>
			</ul>
		</div>
	</div>
</nav>