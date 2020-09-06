object galvan {
	var sueldo = 0
	var dinero = 0
	var deuda = 0
	
    method cobrarSueldo() {
    	sueldo = 20000;
    	if (deuda >= sueldo) {
    		deuda -= sueldo;
    		sueldo -= sueldo
    	}
    	else {
    		deuda = (deuda - sueldo).abs();
    		sueldo = deuda; 
    		deuda -= deuda;
    		dinero += sueldo;
    		sueldo -= sueldo
    	}
    }
    
    method sueldo() {
    	return dinero
    }
	
	
	method gastar(monto) {
		if (monto > dinero) {
			dinero = (dinero - monto).abs();
			deuda += dinero;
			dinero -= dinero
		}
		else {sueldo -= monto}
	}
	
	method deuda() {
		return deuda
	}
}  

object baigorria  {
	var totalCobrado = 0
	var empanadasVendidas = 0
	
	method vender(cantidad) {
		gimenez.fondo(cantidad * 15)
		empanadasVendidas = cantidad
	}
	
	method sueldo() {
		return empanadasVendidas * 15
	} 
	
	method totalCobrado() {
		return totalCobrado
	}
	
	method cobrarSueldo() {
		totalCobrado += self.sueldo()
		
	}
}

object gimenez {
	var fondo = 300000
	
	method fondo() {
		return (fondo)
	}		
	
	method fondo(entrada) {
		fondo += entrada
	}
	
	method pagarSueldo(empleado) {
		empleado.cobrarSueldo()
		fondo -= empleado.sueldo()
	}
}