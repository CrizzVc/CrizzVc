import 'package:http/http.dart' as http;
import 'dart:convert';

class Pokemon{
  String? name;

  Pokemon(Map info){
      this.name = info['forms'][0]['name'];
  }
  }

void main() async {

  var url = Uri.http('pokeapi.co','api/v2/pokemon/pikachu');
  var response = await http.get(url);
  print('estado:${response.statusCode}');

  Map<String,dynamic> info = jsonDecode(response.body);
  Pokemon pika = Pokemon(info);
  print('Nombre:${pika.name}');
}