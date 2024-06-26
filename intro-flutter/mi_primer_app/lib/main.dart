import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// 1. StatefullWidget (con estado)
// 2. StatelessWidget (sin estado)

class MyApp extends StatefulWidget {
  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int contador = 10;

  @override
  Widget build(BuildContext context) {
    final estilo = TextStyle(fontSize: 40, color: Colors.indigo);

    return MaterialApp(
      title: 'Mi primer app',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // centerTitle: false,
          backgroundColor: Colors.indigo[800],
          // backgroundColor: Color(0xff009688),
          title: Text(
            'Mi primer app',
            style: TextStyle(color: Colors.indigo[100]),
          ),
        ),
        drawer: Drawer(),
        body: Center(
          child: Container(
            // color: Colors.red,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Hizo tantas veces clic',
                  style: estilo.copyWith(
                      fontSize: contador.toDouble(),
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  '$contador clics',
                  style: estilo,
                ),
              ],
            ),
          ),
        ),
        // floatingActionButtonLocation:
        //     FloatingActionButtonLocation.miniCenterTop,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // if (contador > 14) return;

            contador++;

            // notifica al widget que sus propiedades cambiaron
            setState(() {});
          },
          child: Icon(
            Icons.plus_one,
            color: Colors.pink[800],
          ),
        ),
      ),
    );
  }
}
