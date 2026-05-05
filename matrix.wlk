import personaje.*

object nave {
const pasajeros = [neo,morfeo,trinity]
method subir(unPasajero) {
  if (pasajeros.contains(unPasajero))
  self.error("El Pasajero Ya Esta En La Nave")
   pasajeros.add(unPasajero)
}

method bajar(unPasajero) {
    if (!pasajeros.contains(unPasajero))
  self.error("El Pasajero Ya Bajo De La Nave")
  pasajeros.remove(unPasajero)
}

method cuantosPasajerosHay() = pasajeros.size()

method mayorVitalidad() = pasajeros.max({p => p.vitalidad()})

method estaElegido() = pasajeros.any({p => p.elegido()})

method vitalidadEquilibrada() = self.mayorVitalidad().vitalidad() <= self.menorVitalidad().vitalidad() * 2
method menorVitalidad() = pasajeros.min({p => p.vitalidad()})

method chocar() {

  pasajeros.forEach({p => p.saltar()})
  pasajeros.clear()

}

method acelerar() {
  self.saltan(self.noElegido())
}

method saltan(unaLista) {
   unaLista.forEach({p => p.saltar()})
}


method noElegido() = pasajeros.filter({p => !p.elegido()})

}