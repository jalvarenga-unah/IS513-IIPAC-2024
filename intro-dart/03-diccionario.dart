void main() {
  final Map<String, dynamic> persona = {
    'nombre': 'Juan',
    'edad': 30,
    'comidas_favoritas': ['Pizza', 'Sopas'],
    'es_mayor': true
  };

  final roles = {
    1: 'Admin',
    2: 'Cajero',
  };

  print(persona);

  persona['nombre'] = 'enrique';
  persona['direccion'] = "UNAH-VS";

  print(persona);
}
