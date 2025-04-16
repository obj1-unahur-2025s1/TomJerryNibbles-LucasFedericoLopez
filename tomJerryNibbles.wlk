object tom {
    var energia = 50
    var ultimoRatonComido = jerry
    var distanciaRecorrida = 0
    method energia() = energia
    method comer(unRaton){
        energia = energia + 12 + unRaton.peso()
        ultimoRatonComido = unRaton
    }
    method correr(metros){
        energia = energia - (metros / 2)
        distanciaRecorrida = distanciaRecorrida + metros
    }
    method velocidadMax() = 5 + (energia / 10)
    method puedeCazar(unaDistancia) = energia > unaDistancia / 2
    method cazar(unRaton,unaDistancia){
        if (self.puedeCazar(unaDistancia)) {
            self.correr(unaDistancia)
            self.comer(unRaton)
        }
    }
}

object jerry {
    var edad = 2
    method cumplirAños(){
        edad += 1
    }
    method peso() = edad * 20
}

object nibbles {
  method peso() = 35
}

object nini {
  method peso() = 30
}