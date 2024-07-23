import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              // color: Colors.red,
              // height: MediaQuery.of(context).size.height * 0.85,
              child: ListView(
                children: [
                  const DrawerHeader(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/11632827?v=4'),
                        ),
                        Text('Juan Alvarenga'),
                      ],
                    ),
                  ),
                  ListTile(
                    title: const Text('Inicio'),
                    leading: const Icon(Icons.home),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () => Navigator.of(context).pushNamed('home'),
                  ),
                  ListTile(
                    title: const Text('Listas'),
                    leading: const Icon(Icons.list),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () {},
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Opciones de menu',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text('Menus'),
                    leading: const Icon(Icons.menu),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () {
                      Navigator.of(context).pop(); // el drawer

                      Navigator.of(context).pushNamed('menus');
                    },
                  ),

                  // const Expanded(child: SizedBox()),
                  // const Spacer(),
                ],
              ),
            ), //final de la lista
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Salir',
                style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: const Text('Cerrar sesión'),
              leading: const Icon(Icons.exit_to_app),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {},
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('listas', arguments: {
                  'usuario': 'jalvarenga',
                  'rol': 'profesor',
                  'anio': 2024
                });
                // Navigator.pushNamed(context, 'listas');
              },
              child: const Text('Listas'),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () => Navigator.of(context).pushNamed('imagenes'),
              child: const Text('Imagenes'),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () => Navigator.of(context).pushNamed('inputs'),
              child: const Text('Inputs'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () => Navigator.of(context).pushNamed('menus'),
              child: const Text('Menus'),
            ),
            const SizedBox(height: 20),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.http),
            ),
          ],
        ),
      ),
    );
  }
}
