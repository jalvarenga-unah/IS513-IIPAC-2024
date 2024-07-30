import 'package:flutter/material.dart';
import 'package:gestor_estado/contador_controller.dart';

class DetalleContador extends StatelessWidget {
  DetalleContador({super.key});

  final controller = ContadorController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${controller.contador.value}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
