import 'package:flutter/material.dart';

class page4 extends StatelessWidget {
  const page4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: [ 
        Stack(
          children: [
            Container(
              width: 400,
              height: 250,
              child: 
              Image.network('https://i.pinimg.com/564x/7c/df/51/7cdf513c6865322c4a6a12d9434db824.jpg'),

            ),
            Positioned(
              top: 140,
              left: 150,
              child: 
              CircleAvatar(
                radius: 48, // Image radius
                backgroundImage: NetworkImage('https://i.pinimg.com/736x/e5/65/95/e5659552dcd86cf5d6adc46feec02e64.jpg'),
              )
            )
          ],
        ),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 80,
              height: 30,
              child: Center(child: Text('Paquito', style: TextStyle(color: Colors.white))
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 51, 47, 47),
                borderRadius: BorderRadius.circular(10)
              ),
              
            ),
            Container(
              width: 80,
              height: 30,
              child: Center(child: Text('Amigos: 30', style: TextStyle(color: Colors.white))),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 51, 47, 47),
                borderRadius: BorderRadius.circular(10)
              )
            ),
            
          ]
        
        ),
        Text(''),
        Text(''),
        Text(''),
        Text(''),
        Container(
          width: 300,
          height: 200,
          child: Image.network('https://i.pinimg.com/564x/a5/0e/12/a50e12769b15bfdf278ead810766c4c7.jpg'),
          decoration: BoxDecoration(
            color:  Color.fromARGB(106, 61, 61, 61),
            borderRadius: BorderRadius.circular(10)
          )
        ),
        Text(''),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 30,
              height: 30,
              child: Center(child: Icon(Icons.favorite,color: Color.fromARGB(255, 255, 83, 71),)),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 51, 47, 47),
                borderRadius: BorderRadius.circular(10)
              ),
              
            ),
            Container(
              width: 30,
              height: 30,
              child: Center(child: Icon(Icons.bookmark)),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 51, 47, 47),
                borderRadius: BorderRadius.circular(10)
              )
            ),
            
          ]
        
        ),
      ],
      )
    );
  }
}


String img = 'https://i.pinimg.com/564x/84/a7/df/84a7df37933e4e0acb17a56cefebede1.jpg';