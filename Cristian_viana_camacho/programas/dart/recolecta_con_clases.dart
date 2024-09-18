import 'dart:io';

class Colaborador {
  String? _nombreCompleto;
  int? _tipoColaborador;
  double _aporte = 0;

  Colaborador(String nombre, double aporte, int tipo) {
    this._nombreCompleto = nombre;
    this._aporte = aporte;
    this._tipoColaborador = tipo;
  }

  String getNombreCompleto() {
    return this._nombreCompleto!;
  }

  int getTipo() => _tipoColaborador!;

  @override
  String toString() {
    return "su nombre es: ${this._nombreCompleto} su aporte es: ${this._aporte} su tipo de colaboracion es: ${this._tipoColaborador}";
  }

  double getAporte() {
    return this._aporte;
  }
}

//recolecta
class Recolecta {
  List colaboradores = [];
  double? _montoRecaudar;
  double _balance = 0;

  Recolecta(double? monto, double balance) {
    this._montoRecaudar = monto;
    this._balance = balance;
  }

  //ADD COLABORADOR 
  void addColaborador(Colaborador) {
    this.colaboradores.add(Colaborador);
    //por aporte
    if (Colaborador._aporte >= 10000) {
      this.generoso.add(Colaborador);
    }

    //por tipo
    if (Colaborador._tipoColaborador == 1) {
      this.tipo1.add(Colaborador);
    } else if (Colaborador._tipoColaborador == 2) {
      this.tipo2.add(Colaborador);
    }

    for (int i = 0; i < colaboradores.length; i++) {
      this._montoRecaudar = this._montoRecaudar! + colaboradores[i]._aporte;
    }
    
  }

  bool finalizada() {
    bool b = false;
    if (this._montoRecaudar! >= this._balance) {
      b = true;
    }
    return b;
  }

  //FUNCION GENEROSOS
  List<Colaborador> generoso = [];

  List generosos() {
    return generoso;
  }

  //RECAUDO GENEROSO
  double recaudoGenerosos() {
    double totalGeneroso = 0;
    for (int i = 0; i < generoso.length; i++) {
      totalGeneroso = totalGeneroso + generoso[i]._aporte;
    }

    return totalGeneroso;
  }

  //PROMEDIO GENEROSO
  double promedioGenerosos() {
    double tl = 0;
    for (int c = 0; c < generoso.length; c++) {
      tl = tl + generoso[c]._aporte;
    }
    
    double prom = tl/generoso.length;
    return prom;
  }

  //RECAUDO POR TIPO
  List<Colaborador> tipo1 = [];
  List<Colaborador> tipo2 = [];

  recaudoPorTipo() {
    print('ingrese el tipo de Colaborador [1] o [2]');
    int tp = int.parse(stdin.readLineSync()!);
    if (tp == 1) {
      double totalTipo1 = 0;
      for (int i = 0; i < tipo1.length; i++) {
        totalTipo1 = totalTipo1 + generoso[i]._aporte;
      }

      return totalTipo1;
    } else if (tp == 2) {
      double totalTipo2 = 0;
      for (int i = 0; i < tipo2.length; i++) {
        totalTipo2 = totalTipo2 + generoso[i]._aporte;
      }

      return totalTipo2;
    }
  }

  //Function adicional                               ESTA ES UNNA FUNCION EXTRA QUE ME PARECIO IMPORTANTE AGREGAR
  //                                                 SIRVE PARA MOSTRAR EL TOTAL DE LA RECOLECTA.
  double totalGeneral() {
    double total = 0;
    for(int i = 0; i < this.colaboradores.length; i++){
      total = total + this.colaboradores[i]._aporte;
    }
    return total;
  }
  
}

void main() {
  Recolecta recolecta1 = Recolecta(0, 60000);

  while (recolecta1.finalizada() == false) {
    print('---------------------------------------------');
    print('ingrese su nombre');
    String name = stdin.readLineSync()!;
    print('ingrese su aportacion');
    double aport = double.parse(stdin.readLineSync()!);
    print('ingrese tipo de colaborador');
    int tip0 = int.parse(stdin.readLineSync()!);

    Colaborador cola = Colaborador(name, aport, tip0);
    recolecta1.addColaborador(cola);

  }

  print("-----------------------------------------------");
  print('TOTAL: ${recolecta1.totalGeneral()}');
  print('TOTAL GENEROSOS: ${recolecta1.recaudoGenerosos()}');
  print('PROMEDIO GENEROSOS: ${recolecta1.promedioGenerosos()}');
}
