import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// 1. StatefullWidget (con estado)
// 2. StatelessWidget (sin estado)

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi primer app',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // centerTitle: false,
          backgroundColor: Colors.indigo[300],
          // backgroundColor: Color(0xff009688),
          title: const Align(
            alignment: Alignment.center,
            child: Text('Mi primer app'),
          ),
        ),
        body: const Center(
          child: Text('Hola mundo'),
        ),
      ),
    );
  }
}
