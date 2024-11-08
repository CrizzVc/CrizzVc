import 'package:flutter/material.dart';


class page3 extends StatelessWidget {
  const page3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
        Positioned(
          child: 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'buscar...',
                    fillColor: Colors.white,
                    hoverColor: Colors.white
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom( iconColor: const Color.fromARGB(255, 247, 184, 69),
                ),
                onPressed: () { },
                child: Icon(Icons.search)
              ),
            ]
          )
        ),
        
        Text(''),
        Container(
          width: 290,
          height: 150,
          child: Image.network('https://i.pinimg.com/564x/ea/4c/d3/ea4cd3253a7f7d7baeaddf15994f3bc9.jpg'),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromRGBO(147, 112,214, 1),
            
          )
        ),
        Text(''),
        Container(
          width: 290,
          height: 150,
          child: Image.network('https://i.pinimg.com/564x/59/bb/d3/59bbd3073da220b0108f19138ca646c2.jpg'),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromRGBO(61, 176,101, 1)
            
          )
        ),
        Text(''),
        Container(
          width: 290,
          height: 150,
          child: Image.network('https://i.pinimg.com/564x/e7/ae/ef/e7aeef949a7896f6e94adef953a88d02.jpg'),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromRGBO(56, 117,57, 1)
            
          )
        ),
        
      ],
    );
  }
}

