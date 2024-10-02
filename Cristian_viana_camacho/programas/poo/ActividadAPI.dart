import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

var v;

class Adress {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Adress(Map direc) {
    this.street = direc[v]["street"];
    this.suite = direc[v]["suite"];
    this.city = direc[v]["city"];
    this.zipcode = direc[v]["zipcode"];
    Map g3o = direc[v]["adress"]["geo"];
    this.geo = new Geo(g3o);
  }
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;
  Company(Map com) {
    this.name = com["name"];
    this.catchPhrase = com["catchPhrase"];
    this.bs = com["bs"];
  }
}

class User {
  int? id;
  String? name;
  String? username;
  String? email;
  Adress? adress;
  String? phone;
  String? website;
  Company? company;
  User(Map api) {
    this.id = api[v]["id"];
    this.name = api[v]["name"];
    this.username = api[v]["username"];
    this.email = api[v]["email"];
    Map direc = api[v]["adress"];
    this.adress = new Adress(direc);
    this.phone = api[v]["phone"];
    this.website = api[v]["website"];
    Map com = api[v]["company"];
    this.company = new Company(com);
  }
}

class Geo {
  String? late;
  String? lng;
  Geo(Map g3o) {
    this.late = g3o["adress"]["geo"];
    this.late = g3o["adress"]["geo"];
  }
}

void main() async {
  var url = Uri.http('jsonplaceholder.typicode.com', 'users/${v}');
  var response = await http.get(url);
  print('estado:${response.statusCode}');

  Map<String, dynamic> datos = jsonDecode(response.body);

  User a = new User(datos);
  print("ingrese el id del usuario");
  v = int.parse(stdin.readLineSync()!);
  print("${a}.id");
}
