class Product {
  final String id;
  final String name;
  final double price;
  final String imageUrl;
  final bool isFavorite;

  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
  });

  Product copyWith({bool? isFavorite}) => Product(
        id: id,
        name: name,
        price: price,
        imageUrl: imageUrl,
        isFavorite: isFavorite ?? this.isFavorite,
      );
}
