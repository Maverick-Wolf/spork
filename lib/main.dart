import 'package:flutter/material.dart';
import 'package:spork/screens/main_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: "Cour"),
    routes: {
      '/': (context) => MainScreen(),
    },
  ));
}
