import 'dart:math';
import 'dart:ui';

//ESTE PROGRAMA FUNCIONA CON COMANDOS FLUTTER! pero puedes ejecutarlo en esta paguina:"https://zapp.run/"
//EN EL APARTADO LOGS SE VERÁ EL COLOR

void main() {
  //generador de colores
  var randomColor = generateRandomColor();
  print('el color generado es: $randomColor');
}

Color generateRandomColor() {
  Random random = Random();
  // generar valores aleatorios para los componentes RGB
  int red = random.nextInt(256);
  int green = random.nextInt(256);
  int blue = random.nextInt(256);
  //crear y devover el color con los valores generados
  return Color.fromARGB(255, red, green, blue);
}
