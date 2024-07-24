import 'package:componentes/home_page.dart';
import 'package:componentes/imagenes_page.dart';
import 'package:componentes/inpust_page.dart';
import 'package:componentes/listas_page.dart';
import 'package:componentes/menu_page.dart';
import 'package:componentes/peticiones_page.dart';
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
      initialRoute: 'home', // debe ser una ruta previamente definida
      routes: {
        'home': (context) => const HomePage(),
        'listas': (context) => ListasPage(),
        'imagenes': (context) => const ImagenesPage(),
        'inputs': (context) => InputsPage(),
        'menus': (context) => const MenuPage(),
        'peticiones': (context) => PeticionesPage(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.error,
                    size: 100,
                  ),
                  Text(
                    'La ruta " ${settings.name} " no existe',
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
