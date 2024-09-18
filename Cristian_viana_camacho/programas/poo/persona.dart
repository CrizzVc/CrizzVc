class Carro {
  String? color;
  int? velocidad;
  String? marca;

  Carro(String marca, String color) {
    this.marca = marca;
    this.color = color;
  }

  llamarDescripcion(){
    return " MARCA:${marca} COLOR:${color} KM:${velocidad}"; 
  }
}

class Persona {
  String? nombre;
  int? edad;
  String? auto;

  Persona(String nombre, int edad){
    this.nombre;
    this.edad;
  }

  llamarPersona(){
    return "NOMBRE:${nombre} EDAD:${edad} AUTO:${auto}"; 
  }

}

void main() {

  Carro deportivo = new Carro("audi", "negro");
  deportivo.velocidad = 331;

  Carro citadino = new Carro("mazda", "gris");
  citadino.velocidad = 182;

  Persona ximena = new Persona("Ximena", 25);
  Persona andres = new Persona("Andres", 27);

  ximena.auto = deportivo.llamarDescripcion();
  andres.auto = citadino.llamarDescripcion();

  String person = ximena.llamarPersona();
  String person2 = andres.llamarPersona();

  print(person);
  print(person2);
}