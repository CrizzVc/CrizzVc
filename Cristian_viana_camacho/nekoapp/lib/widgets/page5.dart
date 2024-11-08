import 'package:app_anime/models/neko.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ninetythree_shadows/ninetythree_shadows.dart';




class page5 extends StatelessWidget {
  List data;
  int i = 0;
  page5({required this.data});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(itemCount: data.length, 
    gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2),
    itemBuilder: (context, index) => Padding(
      padding: const EdgeInsets.all(8.0), 
      child: Container(
        child: Image.network('${data[i ++]['img']}'),
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color.fromARGB(255, 36, 36, 36),
          boxShadow: NTShadows.thirty,
        )
      ),
    ), 
    );
  }
}