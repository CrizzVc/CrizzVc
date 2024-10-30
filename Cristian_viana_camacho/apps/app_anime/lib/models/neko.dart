import 'dart:convert';

class Neko {
  String? img;
  String? artist;
  Neko(String data){
    Map api = jsonDecode(data);
    this.img = api['results'][0]['url'];
    this.artist = api['results'][0]['artist_name'];
  }
}