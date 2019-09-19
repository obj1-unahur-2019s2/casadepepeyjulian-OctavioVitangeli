import cosas.* 
import cuentas.*

object casaDePepeYJulian {
	const cosas = []
	var property  cuentaQueSeEstaUsando
	
	method comprar(cosa){cosas.add(cosa)
		self.gastar(cosa.precio())
	}
	
	method cantidadDeCosasCompradas(){return cosas.size()}
	
	method tieneComida(){return cosas.any({comida => comida.esComida()})}
	
	method vieneDeEquiparse(){return cosas.last().esElectrodomestico() or cosas.last().precio() >5000}
	
	method esDerrochona(){return cosas.sum() >= 9000}
		
	method compraMasCara(){return cosas.max({algo => algo.precio()}) }
	
	method electrodomesticosComprados(){return cosas.filter({cosa => cosa.esElectrodomestico()}) }
	
	method malaEpoca(){cosas.all({algo => algo.esComida()}) }
	
	method queFaltaComprar(lista){ return lista.difference(cosas)}
	
	method faltaComida(){return cosas.filter({ comidas => comidas.esComida()}).size() < 2}

	method gastoEnComida(){cosas.filter({cosa => cosa.esComida() }).sum({cosa => cosa.precio()})  }
	
	method comidaComprada() = cosas.filter({comida => comida.esComida()})
	
	method hayElectrodomesticosBaratos(){return self.electrodomesticosComprados().any({cosa => cosa.precio() > 3000})}
	
	method primeraComidaComprada(){ return self.comidaComprada().first()}
	
	method gastar(importe){cuentaQueSeEstaUsando.extraer(importe) }
	
	method dineroDisponible(){return cuentaQueSeEstaUsando.saldo()}
	
}









