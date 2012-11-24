<%@ page import="ar.unlam.edu.ar.fixture.domain.Player" %>



<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="player.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${playerInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="player.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${playerInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="player.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${playerInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'teams', 'error')} ">
	<label for="teams">
		<g:message code="player.teams.label" default="Teams" />
		
	</label>
	<g:select id="teams" name="teams.id" from="${ar.unlam.edu.ar.fixture.domain.Team.list()}" optionKey="id" value="${playerInstance?.teams?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="player.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${playerInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="player.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${playerInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'telephone', 'error')} ">
	<label for="telephone">
		<g:message code="player.telephone.label" default="Telephone" />
		
	</label>
	<g:textField name="telephone" value="${playerInstance?.telephone}"/>
</div>

