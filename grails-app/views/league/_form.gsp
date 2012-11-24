<%@ page import="ar.unlam.edu.ar.fixture.domain.League" %>



<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'closed', 'error')} ">
	<label for="closed">
		<g:message code="league.closed.label" default="Closed" />
		
	</label>
	<g:checkBox name="closed" value="${leagueInstance?.closed}" />
</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="league.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${leagueInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'teams', 'error')} ">
	<label for="teams">
		<g:message code="league.teams.label" default="Teams" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${leagueInstance?.teams?}" var="t">
    <li><g:link controller="team" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="team" action="create" params="['league.id': leagueInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'team.label', default: 'Team')])}</g:link>
</li>
</ul>

</div>

