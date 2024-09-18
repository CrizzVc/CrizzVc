class Usuario {
  String? _mail;
  String? _name;
  String? _password;
  int? id;

  //contructor
  Usuario(String mail, String name, String password, int id){
    this._mail = mail;
    this._name = name;
    this._password = password;

    this.id = id;
  }

  //colocar datos nuevos
  void setPassword(String password){
    this._password = password;
  }

  void setMail(String mail){
    this._mail = mail;
  }

  void setName(String name){
    this._name = name;
  }

  //tomar datos de usuario
  String getDatos(){
    return "${this._mail} ${this._name} ${this._password} ${this.id}";
  }


}

void main(){

  Usuario user = new Usuario(
    "cristianviana.c@gmail.com", 
    "CrizVc", 
    "enpanada69",
    1
  );

  Usuario user2 = new Usuario(
    "cskajlksjdsk.@gamil.com",
    "pepe",
    "54321",
    2
  );

  //user 1

  print(user.getDatos());
  print("");
  user.setPassword("1234");
  //user._password = "1234";  <= este codigo no deberia funcionar y si lo hace es por el compilador
  print("");
  print(user.getDatos());

  //user 2

  print("");
  print(user2.getDatos());

}