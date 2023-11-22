import Juegos.*
import Descuentos.*
import Paises.*

object plataforma {
	const juegos = #{}
	
	method juegoMasCaro() = juegos.max({ juego => juego.precio() })
	method juegosCasiCaros() = juegos.filter({ juego => juego.loSupera(self.juegoMasCaro()) })
	method aplicarDescuentoACasiCaros() {
		self.juegosCasiCaros().forEach({ juego => juego.aplicarDescuento(new Directo(porcentaje = (0.. 100).anyOne())) })
	} 
	
	method juegosAptosMenoresEn(pais) = juegos.filter({ juego => juego.esAptoParaMenoresEn(pais) })
	method calcularPrecio(juegosAptos) = juegosAptos.sum({ juego => juego.precio() })
	method calcularPromedio(juegosAptos) = self.calcularPrecio(juegosAptos)/juegosAptos.size() 
	method precioPromedioJuegosAptosMenores(pais) = pais.precioEnMonedaLocal
													(self.calcularPromedio(self.juegosAptosMenoresEn(pais)))
}