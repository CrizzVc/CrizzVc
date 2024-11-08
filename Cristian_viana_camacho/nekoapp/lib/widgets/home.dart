import 'package:app_anime/models/neko.dart';
import 'package:flutter/material.dart';
import 'package:ninetythree_shadows/ninetythree_shadows.dart';
import 'package:blur/blur.dart';


class home extends StatelessWidget {
  Neko neko;
  algo(){}
  // Future<void> saveImg() async {
  //   Map<String, dynamic> request = {
  //     'img': "${this.neko.img}",
  //     'artist':"${this.neko.artist}"
  //   };
  //   final url = await rootBundle.loadString('assets/userData.json');
  // }
  home({ required this.neko});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(physics: BouncingScrollPhysics(), 
      child:  Center(
        child: Column(
          children: [
            Stack(
              // fit: StackFit.loose,
              children: [  
                Image.network('${neko.img}',height: 805, width: 600,).blurred(colorOpacity: 0.4,),
                Positioned(
                  top: 30,
                  left: 23,
                  child: 
                  Center(  
                    child: 
                    Container(
                    width: 350,
                    height: 590,
                    child: Image.network('${neko.img}',width: 400,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(122, 255, 255, 255),
                      boxShadow: NTShadows.thirty,
                    )
                    )
                  )
                ),
                Positioned(
                  top: 640,
                  left: 40,
                  child: Container(
                    width: 320,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(150, 239, 239, 255),
                    ),
                    child: Row(
                      children: [
                        Text('Artist: ${neko?.artist ?? 'paco'}',style: Theme.of(context).textTheme.headlineSmall),
                        TextButton(onPressed: algo, child: Icon(Icons.favorite))
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    )
                  )
                  
                )
              ],
            ),
            
            
            
          ],
        ),
      ),
    );
  }
}

 