object ballesta {
    var flechas = 10
    method potencia() = 4
    method estaCargada() {
        return flechas > 0
    }
    method usosTotales(){
        flechas = flechas - 1
    }
}

object jabalina {
    var estaCargada = true
    method potencia() = 30
    method estaCargada() = estaCargada

    method usosTotales(){
        estaCargada = false
    }
}