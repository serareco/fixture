package ar.unlam.edu.ar.fixture.domain

class League {
	String name
	static hasMany = [teams:Team]
	boolean closed
	
}
