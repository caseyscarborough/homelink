<nav class="navbar navbar-inverse">
	<div class="navbar-inner">
		<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        	<span class="icon-bar"></span>
        	<span class="icon-bar"></span>
        	<span class="icon-bar"></span>
		</a>
		<g:link controller="home" action="index" class="brand">HomeLink&nbsp;<sup>(beta)</sup></g:link>
		<div class="nav-collapse">	
			<ul class="nav">
				<li><g:link controller="home" action="index">Home</g:link></li>
				<g:if test="${controllerName == "shopping"}"><li class="active"></g:if><g:else><li></g:else>
					<g:link controller="shopping" action="index">Shopping</g:link>
				</li>
				<g:if test="${controllerName == "reminder"}"><li class="active"></g:if><g:else><li></g:else>
					<g:link controller="reminder" action="index">Reminders</g:link>
				</li>
				<g:if test="${controllerName == "todo"}"><li class="active"></g:if><g:else><li></g:else>
					<g:link controller="todo" action="list">Todos</g:link>
				</li>
			</ul>
			<ul class="nav pull-right">
				<g:if test="${session.user}">
				<li><g:link controller="account"><small><i class="icon-user icon-white"></i>&nbsp;Welcome, ${session.user.firstName} ${session.user.lastName}!</small></g:link></li>
				<li><g:link controller="session" action="logout">Logout</g:link></li>
				</g:if>
				<g:else>
				<li><g:link controller="session" action="login">Login</g:link></li>
				</g:else>
			</ul>
		</div>
	</div>
</nav>