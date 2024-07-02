import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mi_primer_app/home_page.dart';

void main() {
  runApp(MyApp());
}

// 1. StatefullWidget (con estado)
// 2. StatelessWidget (sin estado)

class MyApp extends StatelessWidget {
  MyApp({super.key});

  String getTitulo() {
    final titulos = ['Mi super app', 'Mi mejor app hasta ahora', 'ola ke ase'];

    int randomIndex = Random().nextInt(3);

    return titulos[randomIndex];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi primer app',
      debugShowCheckedModeBanner: false,
      home: HomePage(
        titulo: getTitulo(),
        contador: 10,
      ),
    );
  }
}
