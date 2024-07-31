import 'package:flutter/material.dart';
import 'package:gestor_estado/contador_controller.dart';
import 'package:get/get.dart';

class DetalleContador extends StatelessWidget {
  DetalleContador({super.key});

  // final controller = ContadorController();
  final controller = Get.find<ContadorController>();

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
            Obx(
              () => Text(
                '${controller.contador.value}',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: (index) {
              controller.currentIndex.value = index;
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.contador.value--;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
