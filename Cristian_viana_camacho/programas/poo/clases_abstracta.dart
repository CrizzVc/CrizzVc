abstract class Vivienda {

  int? nPuertas;

  numeroDePuertas();
}

class Casa implements Vivienda {
  
    int? nPuertas;  
  
    @override
    numeroDePuertas() {
      print("--------------------------");
      return 'Puertas:${this.nPuertas}' ;
    }
}

class Departamento implements Vivienda{
  int? nPuertas;
  
  @override
  numeroDePuertas(){
    print("--------------------------");
    return 'Puertas:${this.nPuertas}' ;
  }
  
}

void main() {
  Casa casaMalambo = new Casa();
  
  casaMalambo.nPuertas = 11;
  print(casaMalambo.numeroDePuertas());
  
  Departamento depaMedallo = new Departamento();
  
  depaMedallo.nPuertas = 5;
  print(depaMedallo.numeroDePuertas());
}
