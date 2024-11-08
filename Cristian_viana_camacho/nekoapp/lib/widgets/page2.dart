import 'package:app_anime/models/neko.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ninetythree_shadows/ninetythree_shadows.dart';
// import 'package:blur/blur.dart';


class Page2 extends StatelessWidget {
  final List data;

  Page2({required this.data});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      itemCount: data.length,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        // print(index + 1); 
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Image.network('${data[index]['url']}'),
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromARGB(255, 36, 36, 36),
              boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 5)],
            ),
          ),
        );
      },
    );
  }
}


// api multiple https://nekos.best/api/v2/neko?amount=10
// api unica https://nekos.best/api/v2/neko