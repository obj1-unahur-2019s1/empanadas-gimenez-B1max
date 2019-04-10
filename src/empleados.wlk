object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
// atributo : se usa get y set o usar la linea anterior
// siempre inicializar contadores o acumuladores
//cantidad de parametros = aridad

//expresiones
//-matematica 8+4
//-booleana 8>11       8>11 ||  7<11    -> verdadero
	var sueldo = 15000
	var deuda = 0
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){
		sueldo += 15000
		sueldo -= deuda
		deuda = 0
	}
	method gastar(cuanto) {deuda = cuanto}
	method totalDeuda() {
		return deuda
	} 
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalDineroCobrado =0
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo() {
		totalDineroCobrado +=self.sueldo()
	}
	method totalDineroCobrado() {return totalDineroCobrado}
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo()
		 empleado.cobrarSueldo()
	}
}
