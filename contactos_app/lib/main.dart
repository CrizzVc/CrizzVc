import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Users Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Users Json.place holder'),
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
  dynamic data;
  void _incrementCounter() {
    setState(() {
      if(_counter < data.length)
        _counter++;
    });
  }

  @override
  void initState(){
    super.initState();
    getInfo();
  }

  Future<void> getInfo() async {
    final response = await Dio().get('https://jsonplaceholder.typicode.com/users/');

    data = response.data;
  }

  // final TextEditingController _controller = TextEditingController();
  // String _inputValue = '';
  // int number = 5;


  // void _saveInput() {
  //   setState(() {
  //     _inputValue = _controller.text; // Guardar el texto en la variable
  //   });
  //   // Puedes hacer algo con _inputValue aquí
  //   print("Texto guardado: $_inputValue");
  //   number = int.parse(_inputValue);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 250, 183, 58),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // TextField(
            //   controller: _controller,
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(),
            //     hintText: 'ingrese el id aqui...',
            //   )
            // ),
            Text(
              'User id: $_counter',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              ' ',
            ),

            Text(
              'Phone: ${data?[_counter -1]['phone'] ?? '+57 301 ******1' }',
            ),
            Text(
              'User Name: ${data?[_counter -1]['username'] ?? 'luchoPorTuAno'}',
            ),
            Text(
              'Nombre: ${data?[_counter -1]['name'] ?? 'venito Camela'}',
            ),
            Text(
              'Email: ${data?[_counter -1]['email'] ?? 'user@gmail.com'}',
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
              'Street: ${data?[_counter -1]['address']['street'] ?? 'los tres postes'}',
            ),
            Text(
              'Suite: ${data?[_counter -1]['address']['suite'] ?? 'ap 2'}',
            ),
            Text(
              'City: ${data?[_counter -1]['address']['city'] ?? 'Malambo'}',
            ),
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
