import 'package:get/get.dart';

class ContadorController extends GetxController {
  final RxInt contador = 10.obs;

  final currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    //hacer mas cosas
    //validar si tiene sesión activa
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
}
