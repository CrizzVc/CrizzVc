import java.util.*;

public class Main {
    public static void main(String[] args) {
     
     Publico carolina = new Publico(173);
     carolina.ruta = "kra 30";
     carolina.empresa = "carolina";
     carolina.ciudad = "barranquilla";
     
     System.out.println(carolina.getCodigo());
     
     Publico coochofal = new Publico(290);
     coochofal.ruta = "normandia";
     coochofal.empresa = "coochofal";
     coochofal.ciudad = "soledad";
     
     System.out.println(coochofal.getCodigo());
     
     
     Particular carro = new Particular(2024);
     carro.placa = "ABFD3";
     carro.color = "rojo";
     carro.ciudad = "Bogota";
     System.out.println(carro.getRtm());
     System.out.println(carro.getInfo());
     
     
     Particular moto = new Particular(2010);
     moto.placa = "SKD38";
     moto.color = "negra";
     moto.ciudad = "medellin";
     System.out.println(moto.getRtm());
     System.out.println(moto.getInfo());
     
    
     
     
    }
  }
  
  
class Trasporte {
    public String empresa;
    public String ciudad;
    
    public  String getInfo() {
      return "empresa:" + this.empresa + "ciudad:" + this.ciudad; 
    } 
    
  }

  
class Publico extends Trasporte {
    
    private int nInterno;
    public String ruta;
    
    Publico(int n) {
      this.nInterno = n;
    }
    
    public String getCodigo(){
      return "ruta:" + this.ruta + " " + "numero:" + this.nInterno;
    }
    
  }
  
  class Particular extends Trasporte {
    
    public String placa; 
    public String color;
    private int modelo;
    
    @Override
    public String getInfo() {
      return "ciudad:" + " " + this.ciudad;
    } 
    
    Particular(int m) {
      this.modelo = m; 
    }
    
    public String getRtm(){
      int rtm = this.modelo + 5;
      return "rtm:" + "" + rtm;
    }
    
  }