import'dart:io';

void main() {
    print('ingrese el numero de estudiantes');
    int es = int.parse(stdin.readLineSync()!);
    int my = 0;
    int mn = 0;
    int gn = 0;
    int tmy = 0;
    int tmn = 0;
    for (var i = 1; i <= es; i ++){
        print('ingrese el valor a donar');
        int v = int.parse(stdin.readLineSync()!);
        if(v>=5000){
            my = my + 1;
            tmy += v;
            gn += gn + v;
        }else{
            mn = mn + 1;
            tmn += v;
            gn += v;
        };
    }
    //fin del ciclo for

    double promy = (tmy/my);
    double promn = (tmn/mn);
    double progn = (gn/es);
    print('la cantidad total recolectada es de: $gn');
    print('la cantidad total recolectada por quienes dieron mas de 5000 es de: $tmy y fueron $my personas');
    print('la cantidad total recolectada por quienes dieron menos de 5000 es de: $tmn y fueron $mn personas');
    print('el promedio general es de: $progn');
    print('el promedio de las personas que dieron mas de 5000 es de: $promy');
    print('el promedio de las personas que dieron menos de 5000 es de: $promn');

}