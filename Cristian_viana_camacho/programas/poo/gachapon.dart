class Banner {
  var personajeSS;
  var personajeA;
  var armaB;

  int pity = 0;
  int cont = 0;

  Banner(personajeA, personajeSS, armaB){
    this.personajeA = personajeA;
    this.personajeSS = personajeSS;
    this.armaB = armaB;
  }
  
  getInfo(){
    return '5☆: ${personajeSS.nombre} 4☆: ${personajeA.nombre}';
  }

}



class User {
  int deseos = 0;

  var inventario = [];
  
  User(int deseos){
    this.deseos = deseos;
  }

  tirar1(banner){
    banner.pity = banner.pity + 1;
    this.deseos = this.deseos - 1;
    
    if(this.deseos == 0){
      print ("error. deseos insuficientes");
    }

    if(banner.pity < 10){
      print (banner.armaB.nombre);
      inventario.add (banner.armaB.nombre);
    }else if(banner.pity == 10){
      print (banner.personajeA.nombre);
      inventario.add (banner.personajeA.nombre);
      banner.pity = 0;
      banner.cont = banner.cont + 1;
    }else if(banner.cont >= 7){
      print (banner.personajeSS.nombre);
      inventario.add (banner.personajeSS.nombre);
      banner.pity = 0;
    }
  }

  tirar10(banner){
    banner.pity = banner.pity + 10;
    this.deseos = this.deseos - 10;
    
    if(banner.pity == 10){
      print (banner.personajeA.nombre);
      inventario.add (banner.personajeA.nombre);
      banner.pity = 0;
      banner.cont = banner.cont + 1;
    }else if(banner.cont >= 7){
      print (banner.personajeSS.nombre);
      inventario.add (banner.personajeSS.nombre);
      banner.pity = 0;
      banner.cont = 0;
    }
  }
}

class Personaje {
  String? nombre;
  String? rareza;

  Personaje(String nombre, String rareza){
    this.nombre = nombre;
    this.rareza = rareza;
  }

}


void main() {
  Personaje yelan = new Personaje("yelan", "SS");
  Personaje amber = new Personaje("amber", "A");
  Personaje hojaDesafilada = new Personaje("hoja desafilada", "b");
  Banner bannerActual = new Banner(amber, yelan, hojaDesafilada);

  User criz = new User(100);
  
  print(bannerActual.getInfo());
  criz.tirar10(bannerActual);
  criz.tirar1(bannerActual);

  print(bannerActual.cont);
  print(criz.inventario);

}



