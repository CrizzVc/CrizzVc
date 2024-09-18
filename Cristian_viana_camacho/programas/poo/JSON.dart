import 'dart:convert';

class Colaborador{
    String? nombreCompleto;
    int? tipoColaborador;
    double? aporte;

    Colaborador(Map dato){
        this.nombreCompleto = dato['nombreCompleto'];
        this.tipoColaborador = dato['tipoColaborador'];
        this.aporte = dato['aporte'];
    }
}

void main() {
    String info = '{"nombreCompleto":"pancracio","tipoColaborador":1,"aporte":10.000}';
    Map<String, dynamic> dato = jsonDecode(info);
    Colaborador a = new Colaborador(dato);
    print(a.nombreCompleto);
}