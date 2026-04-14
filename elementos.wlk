object castillo {
    var defensa = 150
    method altura() = 20
    //Floki estado
    method recibirAtaque(potencia){
        defensa -= potencia
    }
    //Mario estado
    method recibirTrabajo(){
        defensa = (defensa + 20).min(200)
    }
    method recolectado() = defensa / 5
}

object aurora {
    var vida = true
    method altura() = 1
    //Floki estado
    method estadoDeVida() = vida
    method recibirAtaque(potencia){
        if (potencia >= 10) {
            vida = false 
        }
    }
    //Mario estado
    method recibirTrabajo(){
    }
    method recolectado() = 15
}

object tipa {
    var altura = 8
    method altura() = altura
    //Floki estado
    method recibirAtaque(potencia){

    }
    //Mario estado
    method recibirTrabajo(){
        altura += 1
    }
    method recolectado() = altura * 2
}