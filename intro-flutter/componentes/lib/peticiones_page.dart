import 'package:componentes/models/producto.dart';
import 'package:componentes/providers/productos_provider.dart';
import 'package:flutter/material.dart';

class PeticionesPage extends StatelessWidget {
  const PeticionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productos = ProductosProvider();

    return Scaffold(
      appBar: AppBar(
        title: Text('Peticiones'),
      ),
      body: FutureBuilder(
        future: productos.getProductos(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Producto>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }

          if (snapshot.data!.isEmpty) {
            return const Center(
              child: Text('No hay datos'),
            );
          }

          final productos = snapshot.data!;

          return ListView.builder(
            itemCount: productos.length,
            itemBuilder: (context, index) {
              final producto = productos[index];

              return ListTile(
                title: Text(producto.title),
                subtitle: Text(producto.price.toString()),
                leading: Image.network(producto.image),
              );
            },
          );
        },
      ),
    );
  }
}
