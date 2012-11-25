import ar.unlam.edu.ar.fixture.domain.League
import ar.unlam.edu.ar.fixture.domain.Player
import ar.unlam.edu.ar.fixture.domain.Team

class BootStrap {

    def init = { servletContext ->
		
		Player firstPlayer = new Player (
			name:		'Sergio',
			lastName:	'Areco',
			email:		'sergiovareco@gmail.com',
			telephone:	'1564575183',
			password:	'foofighters',
			enabled:	true
			)
		firstPlayer.save(true)
		
		Player secondPlayer = new Player (
			name:		'Sebastian',
			lastName:	'Perez',
			email:		'perezsebastianm@gmail.com',
			telephone:	'156000000',
			password:	'sebas',
			enabled:	true
			)
		secondPlayer.save(true)
		
		League torneoApertura = new League(
			name:		'Torneo Apertura',
			closed :	false)
		torneoApertura.save(true)
		
		Team casanovaFutbol = new Team(
			name:				'CasanovaFutbol',
			nameFootballTeam:	'Napoli'
			)
		casanovaFutbol.save(true)
		
		Team ciudadelaFutbol = new Team(
			name:				'CasanovaFutbol',
			nameFootballTeam:	'Barcelona'
			)
		ciudadelaFutbol.save(true)
	
		
    }
    def destroy = {
    }
}
