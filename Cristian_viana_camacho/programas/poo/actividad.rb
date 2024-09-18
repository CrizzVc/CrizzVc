class Habitacion 
  attr_accessor :metrosCuadrados, :muebles, :color
end

class Consola 
    attr_accessor :marca, :color, :lanzamiento
end

class Multimedia 
    attr_accessor :tipo, :genero, :duracion
end



  estudio = Habitacion.new
  estudio.metrosCuadrados = 30
  estudio.muebles = "escritorios"
  estudio.color = "gris y blanco"

  playStation = Consola.new
  playStation.marca = "sony"
  playStation.color = "blanco"
  playStation.lanzamiento = 2020

  callOfDuty = Multimedia.new
  callOfDuty.tipo = "juego"
  callOfDuty.genero = "FPS"
  callOfDuty.duracion = 420

  puts "#{callOfDuty.tipo}"
  puts "#{playStation.marca}"
  puts "#{estudio.muebles}"
