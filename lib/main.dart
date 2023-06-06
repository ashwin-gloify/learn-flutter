import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 63, 5, 120),
        body: GradientContainer(
            Color.fromARGB(255, 79, 16, 186), Color.fromARGB(155, 83, 2, 133)),
      ),
    ),
  );
}
