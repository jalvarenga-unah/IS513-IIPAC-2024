import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:servicios_google/crear_producto.dart';
import 'package:servicios_google/firebase_options.dart';
import 'package:servicios_google/producto.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: const HomePage(),
      initialRoute: '/home',
      routes: {
        '/home': (BuildContext context) => const HomePage(),
        '/crear_producto': (BuildContext context) => CrearProducto(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final productosRef = FirebaseFirestore.instance
        .collection('productos')
        .withConverter(
          fromFirestore: (snapshot, _) => Producto.fromJson(snapshot.data()!),
          toFirestore: (model, _) => model.toJson(),
        );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: StreamBuilder(
            // future: productosRef.get(),
            stream: productosRef.snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const CircularProgressIndicator();
              }

              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }

              final querySnapshot = snapshot.data;

              if (querySnapshot == null) {
                return const Text('No hay documentos');
              }

              final productos =
                  querySnapshot.docs; // listado de documentos de la coleccion

              return ListView.builder(
                itemCount: productos.length,
                itemBuilder: (context, index) {
                  Producto producto = productos[index].data();

                  return ListTile(
                    title: Text(producto.title),
                    subtitle: Text(producto.description),
                    trailing: IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/crear_producto',
                          arguments: [producto, productos[index].id],
                        );
                      },
                    ),
                    leading: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () async {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('confirmación de eliminación'),
                            content: Text(
                                'quiere eliminar el producto: ${producto.title}?'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  //las intrucciones para eliminar el producto
                                  final docRef = FirebaseFirestore.instance
                                      .collection('productos')
                                      .doc(productos[index].id);
                                  //  docRef.delete();

                                  // if (!context.mounted) return;
                                  // Navigator.pop(context);
                                  docRef.delete().then((_) {
                                    Navigator.pop(context);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Producto eliminado'),
                                      ),
                                    );
                                  });
                                },
                                child: const Text(
                                  'Eliminar',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Cancelar'),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/crear_producto');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
