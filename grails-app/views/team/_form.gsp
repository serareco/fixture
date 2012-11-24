<%@ page import="ar.unlam.edu.ar.fixture.domain.Team" %>



<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="team.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${teamInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'leagues', 'error')} ">
	<label for="leagues">
		<g:message code="team.leagues.label" default="Leagues" />
		
	</label>
	<g:select id="leagues" name="leagues.id" from="${ar.unlam.edu.ar.fixture.domain.League.list()}" optionKey="id" value="${teamInstance?.leagues?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'nameFootballTeam', 'error')} ">
	<label for="nameFootballTeam">
		<g:message code="team.nameFootballTeam.label" default="Name Football Team" />
		
	</label>
	<g:textField name="nameFootballTeam" value="${teamInstance?.nameFootballTeam}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'players', 'error')} ">
	<label for="players">
		<g:message code="team.players.label" default="Players" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${teamInstance?.players?}" var="p">
    <li><g:link controller="player" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="player" action="create" params="['team.id': teamInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'player.label', default: 'Player')])}</g:link>
</li>
</ul>

</div>

