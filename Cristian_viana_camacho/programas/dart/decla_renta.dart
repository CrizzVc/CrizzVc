import 'dart:io';

void main() {
  print('ingrese su declaracion de renta');
  double ren = double.parse(stdin.readLineSync()!);

  double desc;

  if(ren >= 0 && ren <= 10){
    desc = ren * 0.20;
    print('su descuento es de un 20%, valor de renta es de ${ren - desc} pesos ');

  }else if(ren >= 11 && ren <= 100) {
    desc = ren * 0.10;
    print('su descuento es de un 10%, valor de renta es ${ren - desc} pesos');
    
  }else if(ren >= 101 && ren <= 1000) {
    desc = ren * 0.05;
    print('su descuento es de un 5%, valor de renta es ${ren - desc} pesos');

  }else {
    desc = ren * 0.01;
    print('su descuento es de un 1%, valor de renta es ${ren - desc} pesos ');

  }

}

