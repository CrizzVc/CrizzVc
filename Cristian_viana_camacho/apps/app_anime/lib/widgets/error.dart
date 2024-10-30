import 'package:flutter/material.dart';


class error extends StatelessWidget {
  const error({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.error),
        Text('error:')
      ],
    );
  }
}
