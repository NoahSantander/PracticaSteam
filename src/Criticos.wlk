import Juegos.*
import Reviews.*

class Critico {
	method escribirCritica(juego, leGusto, opinion) {
		juego.agregarCritica(new Critica(fuente = self, texto = opinion, esPositiva = leGusto))
	}
}

class Usuario inherits Critico {
	method cambiarPredisposicion(critica) {
		critica.cambiar()
	}
}

class DePago inherits Critico {
	const juegosQuePagaron = #{}
	
	method lePago(juego) = juegosQuePagaron.contains(juego)
	
	override method escribirCritica(juego, leGusto, opinion) {
		juego.agregarCritica(new Critica(fuente = self, texto = opinion, esPositiva = self.lePago(juego)))
	}
	
	method recibirPago(juego) {
		juegosQuePagaron.add(juego)
	}
}