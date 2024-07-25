import 'package:componentes/models/producto.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductosProvider {
  Future<List<Producto>> getProductos() async {
    //GET: es el verbo utilizado en peticiones HTTP, para consumir una entidad
    // desde un servidor

    // final url = 'https://fakestoreapi.com/products';
    // final Uri url = Uri (host: 'fakestoreapi.com', path: '/products');
    //?  visitar https://http.cat para mas info de codigos

    try {
      final Uri url = Uri.https('fakestoreapi.com', '/products');

      final response = await http.get(url); // Response

      if (response.statusCode == 200) {
        // quiero obtener los datos

        final paredResponse = json.decode(response.body);

        final datosMapeados =
            paredResponse.map((producto) => Producto.fromJson(producto));

        return List<Producto>.from(datosMapeados);

        // // ! No lo recomiendo para ustedes
        // //TODO: lo hacemos mañana
        // return productoFromJson(response.body);
      }

      return [];
    } catch (error) {
      throw Exception(error);
    }
  }
}
