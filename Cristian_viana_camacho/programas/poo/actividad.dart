class Habitacion {
  int? metrosCuadrados;
  String? muebles;
  String? color;

}

class Consola {
  String? marca;
  String? color;
  int? lanzamiento;

}

class Multimedia {
  String? tipo;
  String? genero;
  int? duracion;

}

void main() {

  Habitacion estudio = new Habitacion();
  estudio.metrosCuadrados = 30;
  estudio.muebles = "escritorios";
  estudio.color = "gris y blanco";

  Consola playStation = new Consola();
  playStation.marca = "sony";
  playStation.color = "blanco";
  playStation.lanzamiento = 2020;

  Multimedia callOfDuty = new Multimedia();
  callOfDuty.tipo = "juego";
  callOfDuty.genero = "FPS";
  callOfDuty.duracion = 420;

  print(callOfDuty.tipo);
  print(playStation.marca);
  print(estudio.muebles);
}