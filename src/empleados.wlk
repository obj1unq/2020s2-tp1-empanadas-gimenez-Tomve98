object galvan {
	var sueldo = 15000
	
	method sueldo() {
		return (sueldo)
	}
	
	method sueldo(nuevoSueldo) {
		sueldo = nuevoSueldo
	}
}  

object baigorria  {
	var sueldo = 0
	
	method sueldo() {
		return (sueldo)
	}
	
	method sueldo(nuevoSueldo) {
		sueldo = nuevoSueldo
	}
	
	method vender(cantidad) {
		gimenez.fondo(cantidad * 15) ; gimenez.empanadasVendidas(cantidad * 15)
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
			galvan.sueldo(20000); fondo -= 20000
		}
		else {
			baigorria.sueldo(empanadasVendidas); fondo -= empanadasVendidas
		}
	}
}