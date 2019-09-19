object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}
object unKiloDeMilasRebozadas{
	var precio = 260
	method nuevoValor(nuevoPrecio){ precio = nuevoPrecio}
	method precio() { return precio}
	method esComida(){ return true}
	method esElectrodomestico(){ return false}
}
object botellaDeSalsaDeTomate{
	var precio = 90
	method nuevoValor(nuevoPrecio){ precio = nuevoPrecio}
	method precio() { return precio}
	method esComida(){ return true}
	method esElectrodomestico(){ return false}
}
object microondas{
	method precio(){return 4200}
	method esComida(){return false}
	method esElectrodomestico(){return true}
}
object unKiloDeCebollas{
	method precio(){return 25}
	method esComida(){return true}
	method esElectrodomestico(){return false}
}
object unaCompu{
	method precio(){ return 500 * dolar.cotizacion()}
	method esComida(){return false}
	method esElectrodomestico(){return true}
}
object dolar{
	method cotizacion(){return 56 }
}
object packDeComida{
	var plato = []
	var aderezo = []
	method precio(){return plato.precio() + aderezo.precio()}
	method esComida(){return true}
	method esElectrodomestico(){return false}
	
	}

object packRegalos{
	var componentes = []
	
	method precio(){
		return componentes.sum({ cosa => cosa.precio() }) * 0.8
		}
	method esComida(){
		return componentes.all({cosa => cosa.precio() })
	}
	method esElectrodomestico(){
		return componentes.any({cosa => cosa.precio() })
	}	
}














