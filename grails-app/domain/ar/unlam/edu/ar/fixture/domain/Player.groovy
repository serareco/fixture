package ar.unlam.edu.ar.fixture.domain

class Player extends User{
	static belongsTo =  [teams:Team]
	
	static constraints = {
	   teams(nullable:true)
	}
}
