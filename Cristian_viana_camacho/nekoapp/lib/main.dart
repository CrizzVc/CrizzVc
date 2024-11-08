import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:app_anime/widgets/error.dart';
import 'package:app_anime/widgets/esperando.dart';
import 'package:app_anime/widgets/home.dart';
import 'package:app_anime/widgets/page2.dart';
import 'package:app_anime/widgets/page3.dart';
import 'package:app_anime/widgets/page4.dart';
import 'package:app_anime/widgets/page5.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'models/neko.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:app_anime/widgets/page2.dart';
// import 'package:nekos_best/nekos_best.dart' show fetch, Client;
// import 'dart:convert';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neko App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'NekoApp'),
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
  var _currentIndex = 0;
  var userData = [];
  var multiData = [];
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readJson();
    dataMulti();
  }

  // api local
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/userData.json');
    // print('Contenido del JSON: $response');
    final jsonLocal = await json.decode(response);
    setState(() {
      userData = jsonLocal['favoritos'];
    });

  }

  // peticion multiple
  Future<void> dataMulti() async {
    var url = Uri.parse('https://nekos.best/api/v2/neko?amount=20');
    var response = await http.get(url);
    // print('Contenido del JSON: ${response.body}');
    final jsonLocal = await json.decode(response.body);
    setState(() {
      multiData = jsonLocal['results'];
    });

  }




  // peticion para el futurebuilder
  Future<Neko> getData() async{
    var url = Uri.https('nekos.best','/api/v2/neko');
    var response = await http.get(url);
    if(response.statusCode == 200){
      Neko dataa = Neko(response.body);
      return dataa;
    }else{
      throw Exception('error al cargar los datos');
    }
  }


  @override
  Widget build(BuildContext context) {
    
    return RefreshIndicator(
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 1));
        setState(() {});
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 39, 36, 36),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 39, 36, 36),
          title: Text(widget.title, style: TextStyle(color: Color.fromARGB(255, 246, 246, 255)),),
          centerTitle: true,
          
        ),
        body: FutureBuilder<Neko>(
          future: getData(), 
          builder: (BuildContext context, AsyncSnapshot<Neko> snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting){
              return esperando() ;
            } else if(snapshot.hasError){
              
              return Text('${snapshot.error}');
            } else {
              Neko data = snapshot.data!;
              final _screens = [
                home(neko: data),
                Page2(data: multiData),
                page5(data: userData),
                page3(),
                page4(),
                
              ];
              
              return _screens[_currentIndex];
            }
          }
        ),
        bottomNavigationBar: SalomonBottomBar(
          unselectedItemColor: Colors.white,
            currentIndex: _currentIndex,
            onTap: (i) => setState(() => _currentIndex = i),
            items: [
              /// Home
              SalomonBottomBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
                selectedColor: Colors.purple,
                
              ),

              /// feed
              SalomonBottomBarItem(
                icon: Icon(Icons.apps),
                title: Text("Feed"),
                selectedColor: Colors.pink,
              ),

              /// favoritos
              SalomonBottomBarItem(
                icon: Icon(Icons.favorite),
                title: Text("favoritos"),
                selectedColor: Colors.lightBlue,
              ),

              /// Search
              SalomonBottomBarItem(
                icon: Icon(Icons.search),
                title: Text("Search"),
                selectedColor: Colors.orange,
              ),

              /// Profile
              SalomonBottomBarItem(
                icon: Icon(Icons.person),
                title: Text("Profile"),
                selectedColor: Colors.teal,
              ),
            ],
          ),
      ),
    );
  }
}








