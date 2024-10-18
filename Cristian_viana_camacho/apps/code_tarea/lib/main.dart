// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
// import 'ActividadAPI.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  dynamic data;
  late TextEditingController controller;
  String text = '';
  

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  void initState() {
    super.initState();
    getInfo();
    controller = TextEditingController();
    
  }


  Future<void> getInfo() async {
    final response = await Dio().get('https://jsonplaceholder.typicode.com/users/');
    data = response.data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Json Users'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 106, 106, 241),
      ),
      body: FutureBuilder(
        future: getInfo(), 
        builder: (BuildContext context, AsyncSnapshot snapshot){
          
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }else if (snapshot.hasError) {
            return Text('error: ${snapshot.error}');
          }else {
            // int v1 = int.parse(text);
            int v = 1;
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 265,
                    child: TextField(
                      controller: controller,
                      onSubmitted: (String value) {
                        setState(() {
                          text = controller.text;
                        });
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User id',
                      ),
                    ),
                  ),
                  Text(
                    'User id: $v',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text('$text '),

                  Text(
                    'Phone: ${data?[v -1]['phone'] ?? '+57 301 ******1' }',
                  ),
                  Text(
                    'User Name: ${data?[v -1]['username'] ?? 'luchoPorTuAno'}',
                  ),
                  Text(
                    'Nombre: ${data?[v -1]['name'] ?? 'venito Camela'}',
                  ),
                  Text(
                    'Email: ${data?[v -1]['email'] ?? 'user@gmail.com'}',
                  ),
                  Text(
                    ' ',
                  ),

                  Text(
                    'address',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    ' ',
                  ),

                  Text(
                    'Street: ${data?[v -1]['address']['street'] ?? 'los tres postes'}',
                  ),
                  Text(
                    'Suite: ${data?[v -1]['address']['suite'] ?? 'ap 2'}',
                  ),
                  Text(
                    'City: ${data?[v -1]['address']['city'] ?? 'Malambo'}',
                  ),
                ],
              ),
            );
          }


          
        }
        )
    );
  }
}

// codigo clases
