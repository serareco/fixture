package ar.unlam.edu.ar.fixture.domain

abstract class User {
	String  name
	String  lastName
	String  email
	String  telephone
	String  password
	boolean enabled
	
	static constraints = {
		email(nullable:false)
		name()
		lastName()
	 }
}
