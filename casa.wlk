import cosas.* 

object casaDePepeYJulian {
	const property cosas = []

	method comprar(cosa) {
		cosas.add(cosa)
	}

	method cantidadDeCosasCompradas() {
		return cosas.size()
	}

	method tieneAlgun(categoria) {
		return cosas.any({cosa => cosa.categoria() == categoria})
	}

	method vieneDeComprar(categoria) {
		return not cosas.isEmpty() && self.ultimaCosaComprada().categoria() == categoria
	}

	method ultimaCosaComprada() {
		return cosas.last()
	}

	method esDerrochona() {
		return self.importeTotal() >= 9000
	}

	method importeTotal() {
		return cosas.sum({cosa => cosa.precio()})
	}

	method compraMasCara() {
		return cosas.max({cosa => cosa.precio()})
	}

	method comprados(categoria) {
		return cosas.filter({cosa => cosa.categoria() == categoria })
		//return cosas.filter({cosa => cosa.categoria().esComestible() })
	}

	method malaEpoca() {
		return cosas.all({cosa => cosa.categoria() == comida})
	}

	method queFaltaComprar(lista) {
		return lista.filter({cosa => self.estaComprado(cosa)})
	}

	method estaComprado(cosa) {
		return not cosas.contains(cosa)
	}
	method faltaComida() {
		return self.comidaComprada() < 2
	}

	method comidaComprada() {
		return self.comprados(comida).size()
	}

	method categoriasCompradas() {
		return cosas.map({cosa => cosa.categoria()}).asSet()
	}

}
