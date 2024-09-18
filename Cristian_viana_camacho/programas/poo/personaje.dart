class Personaje {

  String? nombre;
  int nivel = 1;
  int ataque = 0;
  int vida = 0;
  int suerte = 0;
  int defensa = 0;

  Personaje(int ataque, int vida){
    this.ataque = ataque;
    this.vida = vida;
  }

  estaVivo(){
    return this.vida > 0;
  }

  estaMuerto(){
    this.vida = 0;
    print('${nombre} a muerto');
  }
  
  curarse(){
    this.vida = this.vida + 40;
  }

  
  atacar(enemigo){
    enemigo.vida = enemigo.vida - ataque;
    print('${nombre} ha golpeado a ${enemigo.nombre}');
    print('');
    if(enemigo.estaVivo()){
      print('${enemigo.nombre} vida : ${enemigo.vida}');
    }else{
      enemigo.estaMuerto();
    }
      
    print('');
  }
  
  
  subirNivel(){
    this.nivel = this.nivel + 1;
    this.ataque = this.ataque + 10;
    this.vida = this.vida + 30;
    this.suerte = this.suerte + 5;
    this.defensa = this.defensa + 20;
  }
  
  verEstado(){
    print('${nombre} (${nivel})' );
    print('ATK = ${ataque}');
    print('HP  = ${vida}');
    print('SRT = ${suerte}');
    print('DEF = ${defensa}');
  }


}

void main(){
  Personaje viajero = new Personaje(20, 100);
  viajero.nombre = 'Aether';
  viajero.defensa = 80;
  viajero.suerte = 10;


  Personaje magoAbismo = new Personaje(20, 100);
  magoAbismo.nombre = 'mago';
  magoAbismo.defensa = 30;
  magoAbismo.suerte = 8;

  viajero.subirNivel();
  viajero.subirNivel();
  
  viajero.verEstado();
  print('');
  viajero.atacar(magoAbismo);
  viajero.atacar(magoAbismo);
  viajero.atacar(magoAbismo);
  
}