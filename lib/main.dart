import 'package:flutter/material.dart';

import 'story1.dart';

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Destini Games',
      home: Story1(),
    );
  }
}
