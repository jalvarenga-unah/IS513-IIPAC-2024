import 'Mascota.dart';

void main() {
  final mascota1 = Mascota(nombre: 'Apolo', raza: 'Terrier');
  final mascota2 = Mascota.soloNombre(nombre: 'Polar');
  final mascota3 = Mascota.conEdad(2);

  final datos = {'nombre': 'Pulgas', 'raza': 'Aguacatero'};

  final mascota4 = Mascota.fromMap(datos);

  print(mascota4.toString());

  // mascota1.setEdad(2);

  // try {
  //   mascota1.edad = 2;
  // } catch (error) {
  //   print(error);
  // }

  // print(mascota1.nombre);
  // print(mascota1.raza);
  // // print(mascota1.getEdad());
  // print(mascota1.edad);

  // print(mascota1.toString());

  // print(mascota1)
}
