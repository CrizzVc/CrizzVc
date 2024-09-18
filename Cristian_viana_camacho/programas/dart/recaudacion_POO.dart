import 'dart:math';

class Estudiante {
  int? dinero;

  Estudiante(int rng) {
    this.dinero = rng;
  }
}

void main() {
  //array
  List<int> total = [];
  int dineroRecaudado = 0;

  if(dineroRecaudado < 300000){

    //recolecta
    for (int c = 0; c < 30; c++) {
      //cantidad de dinero
      var rng = Random();
      for (var i = 0; i < 1; i++) {}

      //persona
      Estudiante estudiantes = new Estudiante(rng.nextInt(10000)+7000);

      //pagando
      total.add(estudiantes.dinero!);
      dineroRecaudado = dineroRecaudado + total[c];
    }
  }
  print(dineroRecaudado);
}