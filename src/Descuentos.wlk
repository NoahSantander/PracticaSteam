class Directo {
	const porcentaje
	
	method precioConDescuento(precio) = precio * porcentaje
}

class Fijo {
	const monto
	
	method noSePasa(precio) = (precio - monto) > (precio / 2)
	method precioConDescuento(precio) = if(self.noSePasa(precio)) (precio - monto) else (precio / 2)
}

object gratis {
	method precioConDescuento(precio) = 0
}

object ninguno {
	method precioConDescuento(precio) = precio
}

class Cupon inherits Directo {
	const valorCupon
	
	override method precioConDescuento(precio) = super(precio) - valorCupon
}