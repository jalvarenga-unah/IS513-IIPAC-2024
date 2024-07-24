import 'package:componentes/providers/productos_provider.dart';
import 'package:flutter/material.dart';

class PeticionesPage extends StatelessWidget {
  const PeticionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productos = ProductosProvider();

    productos.getProductos();

    return Scaffold(
        appBar: AppBar(
          title: Text('Peticiones'),
        ),
        body: Column(
          children: [
            Text('Producto 1'),
            Text('Producto 1'),
            Text('Producto 1'),
            Text('Producto 1'),
            Text('Producto 1'),
            Text('Producto 1'),
          ],
        ));
  }
}
