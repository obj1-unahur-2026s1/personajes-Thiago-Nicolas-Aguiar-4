import armas.*
import elementos.*

object floki {
    var armaInicial = ballesta
    method armaActual() = armaInicial
    method cambioArma(nuevaArma) {
        armaInicial = nuevaArma
    }
    method encontrar(elemento){
        if (self.armaActual().estaCargada()) {
            elemento.recibirAtaque(self.armaActual().potencia())
            self.armaActual().usosTotales()
        }
    } 
}

object mario {
    var valorRecolectado = 0
    var ultimoElemento = castillo
    method encontrar(elemento) {
        valorRecolectado = valorRecolectado + elemento.recolectado()
        elemento.recibirTrabajo()
        ultimoElemento = elemento
    }
    method estaFeliz() = (valorRecolectado >= 50) || (ultimoElemento.altura() >= 10)
}