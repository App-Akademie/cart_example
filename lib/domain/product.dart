class Product {
  final String? name;
  final String? description;
  final double? price;
  int availability;

  Product({
    required this.name,
    required this.description,
    required this.price,
    this.availability = 10,
  });
}
