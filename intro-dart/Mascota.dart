class Mascota {
  //Propiedades

  // "late" le indica a clase, que la propiedad, tendrá un valor en el futuro
  // late String nombre;
  final String nombre;
  final String raza;
  int _edad = 0;

  //constructor

  // Mascota(String nombre, String raza, int edad) {
  //   this.nombre = nombre;
  //   this.raza = raza;
  //   this._edad = edad;
  // }

  Mascota({
    required this.nombre,
    required this.raza,
    // this._edad = 0,
  });

  //TODO: los constructor factory

  //TODO: conscturcotre con nombre

//sobreescribir el metodo
  @override
  String toString() {
    return 'Hola soy ${this.nombre} soy un $raza y tengo $_edad años';
  }

  // comportamientos / metodos

  //TODO: crear metodos getters y setters para "_edad"
}
