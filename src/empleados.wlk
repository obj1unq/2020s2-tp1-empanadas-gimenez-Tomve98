object galvan {
	var sueldo = 0
	var deuda = 0
	
	method sueldo() {
		return (sueldo)
	}
	
	method sueldo(nuevoSueldo) {
		sueldo = nuevoSueldo
	}
	
	method gastar(monto) {
		if (monto > sueldo) {
			sueldo = (sueldo - monto).abs(); deuda += sueldo; sueldo -= sueldo
		}
		else {sueldo -= monto}
	}
	
	method deuda() {
		return deuda
	}
}  

object baigorria  {
	var sueldo = 0
	var totalCobrado = 0
	
	method sueldo() {
		return (sueldo)
	}
	
	method sueldo(nuevoSueldo) {
		sueldo = nuevoSueldo
	}
	
	method vender(cantidad) {
		gimenez.fondo(cantidad * 15) ; gimenez.empanadasVendidas(cantidad * 15)
	}
	
	method totalCobrado() {
		return totalCobrado
	}
	
	method totalCobrado(suma) {
		totalCobrado += suma
	}
}

object gimenez {
	var fondo = 288000
	var empanadasVendidas = 0
	
	method fondo() {
		return (fondo)
	}		
	
	method empanadasVendidas(entrada) {
		empanadasVendidas = empanadasVendidas + entrada
	}
	
	method fondo(entrada) {
		fondo = fondo + entrada
	}
	
	method pagarSueldo(empleado) {
		if (empleado == galvan) {
			galvan.sueldo(15000); fondo -= 15000 
		}
		else {
			baigorria.sueldo(empanadasVendidas); fondo -= empanadasVendidas; baigorria.totalCobrado(empanadasVendidas); empanadasVendidas -= empanadasVendidas
		}
	}
}