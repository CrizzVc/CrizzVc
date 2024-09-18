import'dart:io';

void main() {
  print('Binevenid@!!');
  print('selecciona una adivinanza!!');
  print('|  ad1  |  ad2  |  ad3  |');
  print('los mas dificiles :D');
  print('|  ad4  |  ad5  |  ad6  |');
  String nda = stdin.readLineSync()!;

  if(nda == 'ad1'){
    print('PISTA: es un Animal');
    print('Vuelo de noche, duermo en el día y nunca veras plumas en ala mía');
    String r1 = stdin.readLineSync()!;
    if(r1 == 'murcielago'){
      print('su respuesta es...');
      print('CORRECTA!');
    }else if (r1 == 'Murcielago'){
      print('su respuesta es...');
      print('CORRECTA!');
    }else{
      print('su respuesta es...');
      print('INCORRECTA!');
    };


  }else if(nda == 'ad2'){
    print('PISTA: es un Animal');
    print('¿Cuál es la estrella que no tiene luz?');
    String r1 = stdin.readLineSync()!;
    if(r1 == 'estrella de mar'){
      print('su respuesta es...');
      print('CORRECTA!');
    }else if (r1 == 'la estrella de mar'){
      print('su respuesta es...');
      print('CORRECTA!');
    }else{
      print('su respuesta es...');
      print('INCORRECTA!');
    };


  }else if(nda == 'ad3'){
    print('PISTA: es una fruta');
    print('Blanca por dentro, verde por fuera. Si quieres te lo digo, espera...');
    String r1 = stdin.readLineSync()!;
    if(r1 == 'la pera'){
      print('su respuesta es...');
      print('CORRECTA!');
    }else if (r1 == 'La pera'){
      print('su respuesta es...');
      print('CORRECTA!');
    }else{
      print('su respuesta es...');
      print('INCORRECTA!');
    };


  }else if(nda == 'ad4'){
    print('Una señorita muy señoreada, lleva sombrero verde y blusa colorada.');
    String r1 = stdin.readLineSync()!;
    if(r1 == 'la fresa'){
      print('su respuesta es...');
      print('CORRECTA!');
    }else if (r1 == 'La fresa'){
      print('su respuesta es...');
      print('CORRECTA!');
    }else{
      print('su respuesta es...');
      print('INCORRECTA!');
    };
  

  }else if(nda == 'ad5'){
    print('¿Qué cosa es que cuanto más le quitas más grande es?');
    String r1 = stdin.readLineSync()!;
    if(r1 == 'un agujero'){
      print('su respuesta es...');
      print('CORRECTA!');
    }else if (r1 == 'un hueco'){
      print('su respuesta es...');
      print('CORRECTA!');
    }else{
      print('su respuesta es...');
      print('INCORRECTA!');
    };

  
  }else if(nda == 'ad6'){
    print('¿Qué es lo que se hace de noche, que no se puede hacer de día?');
    String r1 = stdin.readLineSync()!;
    if(r1 == 'trasnochar'){
      print('su respuesta es...');
      print('CORRECTA!');
    }else if (r1 == 'Trasnochar'){
      print('su respuesta es...');
      print('CORRECTA!');
    }else{
      print('su respuesta es...');
      print('INCORRECTA!');
    };
  }

}
