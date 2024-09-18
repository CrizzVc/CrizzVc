class Pais {
  String? nombre;
  int? poblacion;
  String? clima;

  Pais(String clima, int poblacion){
    this.clima = clima;
    this.poblacion = poblacion;
  }
}

void main() {
  Pais col = new Pais("caluroso", 700000000);
  col.nombre = "colombia";

  print("${col.nombre}, ${col.clima}, ${col.poblacion}");
}