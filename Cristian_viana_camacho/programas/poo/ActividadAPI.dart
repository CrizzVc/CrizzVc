import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

int v = 1;

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address(Map direc) {
    this.street = direc["street"];
    this.suite = direc["suite"];
    this.city = direc["city"];
    this.zipcode = direc["zipcode"];
    this.geo = Geo(direc["geo"]);
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
  Address? address;
  String? phone;
  String? website;
  Company? company;
  User(Map api) {
    this.id = api["id"];
    this.name = api["name"];
    this.username = api["username"];
    this.email = api["email"];
    this.address = Address(api["address"]);
    this.phone = api["phone"];
    this.website = api["website"];
    this.company = Company(api["company"]);
  }

  @override
    String toString() {
      return 'User ID: ${this.id}, User Name: ${this.name}, Email: ${this.email}, Phone Number ${this.phone}.';
    }

}

class Geo {
  String? lat;
  String? lng;
  Geo(Map g3o) {
    this.lat = g3o["lat"];
    this.lng = g3o["lng"];
  }
}

void main() async {
  var url = Uri.http('jsonplaceholder.typicode.com', 'users/${v}');
  var response = await http.get(url);
  print('estado:${response.statusCode}');

  Map<String, dynamic> datos = jsonDecode(response.body);

  User user = new User(datos);
  print("ingrese el id del usuario");
  v = int.parse(stdin.readLineSync()!);
  print("${user}.id");
}
