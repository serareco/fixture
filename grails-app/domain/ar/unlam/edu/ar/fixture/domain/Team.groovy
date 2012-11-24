package ar.unlam.edu.ar.fixture.domain

class Team {
	String name
	String nameFootballTeam
	static hasMany   = [players:Player]
	static belongsTo = [leagues:League]
	
	static constraints = {
		name(nullable:false)
		leagues(nullable:true)
	}
		
}