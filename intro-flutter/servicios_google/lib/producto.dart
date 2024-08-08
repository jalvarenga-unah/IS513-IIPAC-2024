class Producto {
  final String title;
  final double price;
  final String description;

  Producto({
    required this.title,
    required this.price,
    required this.description,
  });

  factory Producto.fromJson(Map<String, dynamic> json) => Producto(
        title: json["title"],
        price: json["price"]?.toDouble(),
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "price": price,
        "description": description,
      };
}
