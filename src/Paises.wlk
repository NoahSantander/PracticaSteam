import Juegos.*

class Pais {
	const caracteristicasProhibidas = []
	const cantDolaresPuedoComprar
	
	method tipoConversion() = 1/cantDolaresPuedoComprar
	method precioEnMonedaLocal(precioDolares) = precioDolares * self.tipoConversion()
	
	method estaProhibida(caracteristica) = caracteristicasProhibidas.contains(caracteristica) 
	method esAptoParaMenores(juego) = !juego.caracteristicas().
									any({ caracteristica => self.estaProhibida(caracteristica) })
}