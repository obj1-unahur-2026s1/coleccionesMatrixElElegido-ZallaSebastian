import matrix.*


object neo {
    var energia = 100
    method saltar() {
      energia = energia * 0.5
    }
    method vitalidad() = energia * 0.1
    method elegido() = true
    method SubirALANave() {
      nave.subir(self)
    }
    method BajarDeLANave() {
      nave.bajar(self)
    }
}




object morfeo {
  var vitalidad = 8 
  var cansado = false
  method saltar() {
    cansado = not cansado
    vitalidad = 0.max(vitalidad - 1) 
  }
  method elegido() = false
  method vitalidad() = vitalidad
 method SubirALANave() {
      nave.subir(self)
    }
    method BajarDeLANave() {
      nave.bajar(self)
    }
}



object trinity {
  method vitalidad() = 0
  method saltar() {}
  method elegido() = false

  method BajarDeLANave() {
      nave.bajar(self)
    }
}
