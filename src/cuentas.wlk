object cuentaCorriente{
	var saldo = 0
	
	method depositar(deposito){ saldo += deposito}
	
	method estraer(extraccion){saldo -= extraccion}
	
	method saldo(){return saldo}
}
object cuentaConGastos{
	var saldo = 0
	method depositar(deposito){ saldo += deposito - 20 }
	method extraer(extraccion){
		if(extraccion >= 1000){saldo -= extraccion - 20}
			else if(extraccion < 1000){saldo -= extraccion - 40 }
	}
	method saldo(){return saldo}
}
object cuantaCombinada{
	var property cuentaPrimaria
	var property cuentaSecundaria
	
	method depositar(deposito){}
	
	method estraer(extraccion){}
	
	method saldo(){
		return cuentaPrimaria.saldo() + cuentaSecundaria.saldo()
	}
}





