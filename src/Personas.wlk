
class Personas{
	var property edad
	
	method tieneInteligencia() = if (20 < edad < 40) 12 else 8
	method tienePotencia() = 20
	method esDestacada() = (edad == 25) or (edad == 35)
	method SuValor() {tieneInteligencia() + tienePotencia()}					   
}

class Atleta inherits Personas{
	var property masaMuscular = 4
	var property tecnicas = 2
	
	override method tienePotencia() = super() + (masaMuscular * tecnicas)
	override method esDestacada() = super() or tecnicas > 5 
	method entrenarUnaCantidadDeDias(dias) {masaMuscular += dias.div(5)}
	method aprenderTecnica() {tecnicas += 1}  
}

class Docente inherits Personas{
	const property cursos = 0
	
	override method tieneInteligencia() = super() + (cursos * 2)
	override method esDestacada() = cursos > 3 
	override method suValor() = super() + 5 
	
}

class Soldado inherits Personas{
	var coleccionArmas = []
	override method tienePotencia() {return super() + coleccionArmas.sum({arma => arma})}
	
}