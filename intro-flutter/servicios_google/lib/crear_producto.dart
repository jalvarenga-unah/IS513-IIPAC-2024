import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:servicios_google/producto.dart';

class CrearProducto extends StatelessWidget {
  CrearProducto({super.key});

  final TextEditingController nombreController = TextEditingController();
  final TextEditingController descripcionController = TextEditingController();
  final TextEditingController precioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Producto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nombreController,
              decoration: const InputDecoration(
                labelText: 'Nombre',
              ),
            ),
            TextField(
              controller: descripcionController,
              decoration: const InputDecoration(
                labelText: 'Descripción',
              ),
            ),
            TextField(
              controller: precioController,
              decoration: const InputDecoration(
                labelText: 'Precio',
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                //obtener los datos de lostextfiled y crear un modelo del producto
                final data = Producto(
                  title: nombreController.text,
                  price: double.parse(precioController.text),
                  description: descripcionController.text,
                );

                // crear la referencia a la coleccion de donde voy a guardar
                final productosRef =
                    FirebaseFirestore.instance.collection('productos');

                // guardar el producto en la coleccion
                final resultado = await productosRef.add(data.toJson());
                // final resultado = await productosRef
                //     .doc('4rbfd43uy2b3iur')
                //     .set(data.toJson());
              },
              child: const Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}
