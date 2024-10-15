import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app zzz',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'personaje Zenless'),
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
  int _counter = 0;
  dynamic info;

  void _incrementCounter() {
    setState(() {
      if(_counter < info.length)
        _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if(_counter > 1)
      _counter--;
    });
  }

  @override
  void initState(){
    super.initState();
    imagZzz();
  }

  Future<void> imagZzz() async {
    final response = await Dio().get('https://crizzvc.github.io/Api_zzz/api.json');

    info = response.data;

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 27, 27),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 250, 183, 58),
        title: Text(widget.title,
          style: const TextStyle(color:Color.fromARGB(255, 250, 253, 253)),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(info?[_counter -1]['name'] ?? 'intenta darle al boton de abajo :D',
              style: const TextStyle(color:Color.fromARGB(255, 250, 253, 253))
            ),

            if(info != null)
              SizedBox(
                width: 450,
                height: 600,
                child: Image.network('${info![_counter -1]['img']}',
                  fit: BoxFit.fitHeight,
                )
              ),
              

            //se supone que cargaria el icono de cargango
            if(info == ConnectionState.waiting)
              CircularProgressIndicator(),

            FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 243, 187, 33),
              onPressed: _decrementCounter,
              child: const Icon(Icons.navigate_before),
            )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 243, 187, 33),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
