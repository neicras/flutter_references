import 'package:flutter/material.dart';
import 'FirstScreen.dart';
import 'SecondScreen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/firstScreen',
    routes: {
      '/firstScreen': (context) => FirstScreen(),
      '/secondScreen': (context) => SecondScreen(),
    },
  ));
}