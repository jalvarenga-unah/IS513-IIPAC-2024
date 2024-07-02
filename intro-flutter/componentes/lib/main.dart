import 'package:componentes/home_page.dart';
import 'package:componentes/listas_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes',
      // home: const HomePage(),
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomePage(),
        'listas': (context) => const ListasPage()
      },
    );
  }
}
