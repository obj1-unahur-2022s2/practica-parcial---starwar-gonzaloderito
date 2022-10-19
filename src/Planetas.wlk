import Personas.*

class Planeta{
	var habitantes = #{}
	var cantidadMuseos = 0
	
	method delegacionDiplomatica() = habitantes.filter({p => p.esDestacada()})
	method valorDefensa()= habitantes.count({p => p.tienePotencia() >= 30 })
	method esCulto() = cantidadMuseos >= 2 and habitantes.all({p => p.tieneInteligencia() >= 10})
	method potenciaReal() = habitantes.tienePotencia().sum()
	method habitantesValiosos() = habitantes.filter({p => p.suValor() >= 40})
	
	
}