import'dart:math';
import'dart:io';

void main() {

  List<String> temas = ["El círculo de la vida: seguir el camino de los antecesores", "La dificultad para comunicarnos con los demás y cómo superarla", "Choque de culturas", 
  "La religión como virtud o hipocresía", "La oscuridad frente a la luz", "La aceptación de la muerte",
   "Deseo de huir de la realidad o la rutina", "El rechazo o desprecio", "Conseguir un sueño… y descubrir que no es lo esperado",
   "Conseguir un sueño… y descubrir que no es lo esperado", "La búsqueda del amor", "El dolor por el amor perdido", "Sacrificios por amor", "La confusión entre la fantasía y la realidad", 
   "La bendición o maldición de tener o vivir en familia", "cambiar el destino", "La codicia que conduce a la autodestrucción", "La traición y sus consecuencias",
   "Héroes verdaderos y héroes falsos", "Presas y depredadores", "Retrato de la estupidez humana", "consecuencias de la inmortalidad", "La ley del silencio"
  ];

  List<String> sexos = ["Hombre", "Mujer"];

  List<String> colores = ["#7402E3", "#E302A1", "#BE02E3", "#2A02E3", "#E3021A", "#CA4EE3", "#E39302", "#E3CA02", "#E3AF02", "#E37202", "#DCE302", "#E6D394", "#02CCE3", "#023EE3", "#0285E3", "#02E3AF",
   "#0E02E3", "#2C98E6", "#02E335", "#02E3CE", "#02E382", "#21E302", "#02B0E3", "#5DE5AB", "#D8E302", "#1CE302", "#7AE302", "#E3CB02", "#02E33A", "#B4E679", "#E31B02", "#E36902", "#E34202", "#E30236", "#E38D02",
   "#E6AF9A", "#021EE3", "#7902E3", "#2F02E3", "#0265E3", "#C202E3", "#6C4EE6", "#E3C002", "#9FE302", "#E3DB02", "#E3A502", "#41E302", "#E5E3AC", "#E33102", "#E38002", "#E35802", "#E30A02", "#E39D02", "#E5CCBC", "#000000", "#FFFFFF"
  ];

  List<String> coloresDePiel = ["blanco", "trigueño", "moreno", "negro"];
  List<String> alturas = ["alto", "promedio", "bajo"];
  List<String> razas = ["elfo", "humano", "enano", "dios", "semidios", "angel", "demonio", "gigante"];
  List<String> personalidades = ["alegre/extrovertido", "introvertido", "misterioso", "temperamental", "mueriego", "lasivo/pervertido", "ansiedad social", "astuto", "inexpresivo", "yandere/obsecivo", "tsundere", "muy correcta", "despreciable", "alcohólico", "amable", "odiso", "loco", "calcuador", "cruel", "inteligete"];
  List<String> coloresDePelo = ["castaño", "marron", "negro", "blanco", "rubio", "rojo", "rosa", "celeste", "morado", "gris"];
  List<String> tiempos = ["el viejo oeste", "actualidad", "futuro", "futuro distopico", "samurais", "magos", "cyberpunk", "1960", "steampunk","posapocalipsis"];
  List<String> aretes = ["si", "no"];
  List<String> armas = ["si", "no"];
  List<String> tiposDeArmas = ["guadaña", "espada", "katana", "hoz", "pistola/s", "hilos", "rifle", "baculo", "artes marciales", "cuchillos", "dagas"];
  List<String> objetivos = ["encontrar a su hermano/a", "salvar a su ciudad", "busca venganza", "detener al villano", "salvar a su amada", "revivir a su gente", "acabar con la ijusticia(para bien o para mal)", "sobrevivir", "detener una amenaza mayor"];
  List<String> coloresDeOjos = ["rojos", "azules", "negros", "grises", "verdes", "heterocromia", "morados"];
  List<String> poses = ["comer", "jugar videojuegos", "corriendo", "manejando carro", "manejando moto", "manejando bici", "jugando tenis", "jugando futbol", "jugando voleibol", "peleando", "haciendo un ataque", "tocando un violin", "tocando la guitarra", "cargando un hechizo", "escucando musica", "esperando el tren", "arriba de un edificio", "en la playa", "estudiando", "dibujando", "en la escuela" ];

  print('Hola!!, ¿en que puedo ayudarte hoy?');
  print('| historia | personajes | ilustracion');
  String op = stdin.readLineSync()!;
  if(op == 'historia'){

    String generadorDeHistorias() {
      String tema = temas[Random().nextInt(temas.length)];
      String objetivo = objetivos[Random().nextInt(objetivos.length)];
      String objetivo2 = objetivos[Random().nextInt(objetivos.length)];
      String tiempo = tiempos[Random().nextInt(tiempos.length)];
      return 'la base de su historia es: $tema. su protagonista tiene como objetivo: $objetivo. su villano tiene como objetivo: $objetivo2. la historia transcurren en la Linea de tiempo: $tiempo';
    }
    print(generadorDeHistorias());



  }else if(op == 'personajes'){

    String generadorDePersonajes() {
      String sexo = sexos[Random().nextInt(sexos.length)];
      String colorDeOjos = coloresDeOjos[Random().nextInt(coloresDeOjos.length)];
      String colorDePiel = coloresDePiel[Random().nextInt(coloresDePiel.length)];
      String colorDePelo = coloresDePelo[Random().nextInt(coloresDePelo.length)];
      String altura = alturas[Random().nextInt(alturas.length)];
      String tiempo = tiempos[Random().nextInt(tiempos.length)];
      String raza = razas[Random().nextInt(razas.length)];
      String personalidad = personalidades[Random().nextInt(personalidades.length)];
      String aretess = aretes[Random().nextInt(aretes.length)];
      String tpArmas = tiposDeArmas[Random().nextInt(tiposDeArmas.length)];
      String armass = aretes[Random().nextInt(aretes.length)];
      

      print('¿usa armas?: $armass');
      if(armas == 'si'){
        print('tipo de arma: $tpArmas');
      }else{
        print('tipo de arma: ninguna');
      }

      return 'Su personaje es: $sexo. Color de piel: $colorDePiel. Color de ojos: $colorDeOjos. color de cabello: $colorDePelo. altura: $altura. raza: $raza. personalidad: $personalidad. Aretes: $aretess. Linea de tiempo: $tiempo.';

    }
    print(generadorDePersonajes());


  }else if(op == 'ilustracion'){

    String generadorDeilustracion() {

      String pose = poses[Random().nextInt(poses.length)];
      String pcolor1 = colores[Random().nextInt(colores.length)];
      String pcolor2 = colores[Random().nextInt(colores.length)];
      String pcolor3 = colores[Random().nextInt(colores.length)];
      String pcolor4 = colores[Random().nextInt(colores.length)];
      String pcolor5 = colores[Random().nextInt(colores.length)];
      String pcolor6 = colores[Random().nextInt(colores.length)];
      String raza = razas[Random().nextInt(razas.length)];
      String sexo = sexos[Random().nextInt(sexos.length)];
      String personalidad = personalidades[Random().nextInt(personalidades.length)];

      return 'pose: $pose. paleta de colores: $pcolor1, $pcolor2, $pcolor3, $pcolor4, $pcolor5, $pcolor6. raza: $raza. sexo: $sexo. personalidad: $personalidad';
    }
    print(generadorDeilustracion());
  }
}