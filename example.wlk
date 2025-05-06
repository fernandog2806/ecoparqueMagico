object dragon {
  const edad = 90
  var temperaturaInicial = 200
  method resistenciaAAltasTemperatura() = true
  method edad() = edad
  method esJoven() = edad < 100
  method esDiurno() = true
  method temperaturaCorporal() = temperaturaInicial
  method alimentar() = temperaturaInicial + 20
  method puedeEntrenar() = temperaturaInicial > 100
  method entrenar() {
    if (self.puedeEntrenar()){
        temperaturaInicial - 40
    }
  }
  method dormir(){
    temperaturaInicial = 200
  }
}
object unicornio {
  const edad = 30
  var poderInicial = 3
  var esFeliz = true
  method edad() = edad
  method esJoven() = edad < 50
  method turno()= turnos.esDiurno()
  method poderMagico() = poderInicial
  method puedeEntrenar() = self.poderMagico() > 5
  method entrenar() {
    esFeliz = true
  }
  method esFeliz() = esFeliz
  method dormir() {
    if (self.esFeliz()){
      esFeliz = false
    }else{
      esFeliz = true
    }
  }
  method alimentar() = poderInicial + 1
}
object sirena {
  const edad = 60
  var hablidadAcuatica = 40
  method edad() = edad
  method esJoven() = edad < 45
  method turno()= turnos.esNocturno()
  method esDiurno() = false
  method alimentar() {
    hablidadAcuatica += hablidadAcuatica * 0.5
  }
  method nadar(metros) {
    hablidadAcuatica -= metros.max(0)
  }
  method practicarParaLaBatalla() {
    hablidadAcuatica -= 20.max(0) 
  }
  method puedeNadar(){
    return hablidadAcuatica > 0
  }
  method hablidadAcuatica() = hablidadAcuatica
  method entrenar(){
    if (self.puedeNadar()){self.nadar(hablidadAcuatica*0.5)
    self.practicarParaLaBatalla()}
  }
  method dormir(){
    hablidadAcuatica = 40
  } 
}
object fenix {
  var edad = 180
  var pelajeReluciente = true
  method turno() = turnos.esDobleTurno()
  method pelajeReluciente() {
    return pelajeReluciente}
  method edad(){
    return edad
  } 
  method esJoven() = edad < 150
  method energia() {
    var energia = 0
    if (self.pelajeReluciente()){
      energia = edad
    } else {
      energia = edad * 0.5
    }
  }
  method esPichon() = edad < 5
  method alimentar(){
    if (self.esPichon()) {
      edad += 1
    } else {
      pelajeReluciente = true
    }
    edad += edad*0.10
  }
  method puedeEntrenar() = !self.esPichon()
  method dormir(){pelajeReluciente = false
    if (edad>200){
      edad = 1
    }}


  }
object gargola {
  var edad = 15
  var estaViva = true
  method turno() = turnos.esNocturno() 
  method edad() = edad
  method esJoven() = true
  method alimentar() {}
  method estaViva() = estaViva
  method esEstatua() {
    estaViva = false
  }
  method entrenar() {
    edad -= 1
   estaViva = false
  }
  method dormir() {
    edad += 5 
  }
  method veALaura() {
    estaViva = true
  }
  method sePuedeCuidar() = estaViva
}

object turnos{
  method esNocturno() = true
  method esDiurno() = true
  method esDobleTurno() = self.esDiurno() && self.esNocturno()
}


object rodrigo {
  var resisteAltasTemperaturas = false
  const cuidador = []
  method añosDeExeriencia() = 0
  method esNuevo() = true
  method turno() = turnos.esDobleTurno()
  method puedeNadar() = true
  method resistenciaAAltasTemperatura() = resisteAltasTemperaturas
  method pasaAResistirAltasTemperaturas() {
    resisteAltasTemperaturas = true
  }
  method hayTutor() {
    cuidador.size() == 1
  } 
}

object laura {
  var sabeNadar = false
  method turno() = turnos.esNocturno()
  method resistenciaAAltasTemperatura() = true
  method puedeNadar() = sabeNadar 
  method aprenderANadar() {
    sabeNadar = true
  }
  method añosDeExperiencia() = 2
}

object german {
  method turno() = turnos.esDiurno()
  method añosDeExperiencia() = 15
  method puedeNadar() = true
  method resistenciaAAltasTemperatura() = true
  method enseñarHabilidad(cuidador){
    if(cuidadores.nombreDelCuidador().contains(cuidador)&&!cuidador.puedeNadar()){
        cuidador.aprendeANadar()
    }else if (cuidadores.nombreDelCuidador().contains(cuidador)&&!cuidador.resistenciaAAltasTemperatura()){
      cuidador.pasaAResistirAltasTemperaturas()
    }
  }
}

object cuidadores {
  const nombreDeLosCuidadores = [rodrigo,laura,german,jimena]
  method nombreDelCuidador() = nombreDeLosCuidadores
}
