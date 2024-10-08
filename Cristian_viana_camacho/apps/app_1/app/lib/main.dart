import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Json Place Holder'),
          backgroundColor: Color.fromARGB(255, 180, 200, 255),
        ),
        body: Column(
          children: [
            Text('ID: {user.id}'),
            Text('NAME: {user.name}'),
            Text('USERNAME: {user.username}'),
            Text('email: {user.email}'),
            // adress
            Text('street: {user.street}'),
            Text('suite: {user.suite}'),
            Text('city: {user.city}'),
            Text('zipcode: {user.zipcode}'),
            // geo
            Text('lat: {user.lat}'),
            Text('lng: {user.lng}'),

            Text('phone: {user.phone}'),
            Text('website: {user.website}'),
            // 
            Text('name: {user.name}'),
            Text('cathPhrase: {user.cathPhrase}'),
            Text('bs: {user.bs}'),
            ElevatedButton(onPressed: (){}, child: Text('getData')),
            CircularProgressIndicator()
        ],)
      ),
    );
  }

}