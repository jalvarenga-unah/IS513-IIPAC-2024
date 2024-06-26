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
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('oli'),
                Text('oli'),
                Text('Hizo tantas veces clic'),
                Text(
                  '1',
                ),
              ],
            ),
          ),
        ),
        // floatingActionButtonLocation:
        //     FloatingActionButtonLocation.miniCenterTop,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('oliii');
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
