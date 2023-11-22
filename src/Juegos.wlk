import Descuentos.*

class Juego {
	var descuento
	const precioDolares
	const caracteristicas = []
	const criticas = []
	
	method caracteristicas() = caracteristicas
	
	method aplicarDescuento(nuevoDescuento) {
		descuento = nuevoDescuento
	}
	
	method loSupera(juegoCaro) = (juegoCaro.precio() * 0.75) > self.precio()
	
	method precio() = descuento.precioConDescuento(precioDolares)
	
	method esAptoParaMenoresEn(pais) = pais.esAptoParaMenores(self)
	
	method agregarCritica(critica) {
		criticas.add(critica)
	}
}