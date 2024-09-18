import'dart:math';

void main() {
  List<String> prefijos = ["tamal", "Elmaquina", "Elva", "Master", "Thekiller","Ninja", "Elmata", "xX", "El", "Dr.", "anti", "Mega", "Juanito", "Predrito", "tuGat@", "vegueta", "goku"];
  List<String> sufijos = ["jinazo", "Shit", "69", "Pro", "Max", "100%Real", "Macos", "uwu", "leMocho", "S3x0", "Corazon", "Mal@","7w7", "666", "777", "aesthetic", "esteril", "ito34", "de3Psesos"];
  
  String generadorDeapodos() {
    String prefijo = prefijos[Random().nextInt(prefijos.length)];
    String sufijo = sufijos[Random().nextInt(sufijos.length)];

    return '$prefijo$sufijo';
  }

  print(generadorDeapodos());
}