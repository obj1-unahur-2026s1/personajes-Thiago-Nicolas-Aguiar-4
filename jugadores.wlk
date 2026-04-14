import personajes.*
object luisa {
    var personajeInicial = floki
    method personajeActual() = personajeInicial
    method cambioDePersonaje(cambio){
        personajeInicial = cambio
    }
    method aparece(elemento){
        self.personajeActual().encontrar(elemento)
    }
}