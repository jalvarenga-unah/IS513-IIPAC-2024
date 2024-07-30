import 'package:flutter/material.dart';
import 'package:gestor_estado/contador_controller.dart';
import 'package:gestor_estado/detalle_contador.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: HomePage(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/detalle': (context) => DetalleContador(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });

  final controller = ContadorController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Hizo clic:',
              style: TextStyle(fontSize: 20),
            ),
            Obx(() {
              return Text(
                '${controller.contador.value}',
                style: const TextStyle(fontSize: 24),
              );
            }),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/detalle');
              },
              child: const Text('Ir a detalle'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.contador.value++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
