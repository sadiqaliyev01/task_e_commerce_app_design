class ProductData {
  final String imageLink;
  final String productCategory;
  final String productDescription;
  final double rating;
  final double price;

  ProductData({
    required this.imageLink,
    required this.productCategory,
    required this.productDescription,
    required this.rating,
    required this.price,
  });

  static List<ProductData> productData = [
    ProductData(
      imageLink: 'assets/png_images/product_image_1.png',
      productCategory: 'Hoodie',
      productDescription: 'Thug Life Unisex Black Hoodie',
      rating: 4.8,
      price: 17.00,
    ),
    ProductData(
        imageLink: "assets/png_images/product_image_2.png",
        productCategory: "T-Shirt",
        productDescription: "Oversize Patterned White Cotton T-Shirt",
        rating: 4.8,
        price: 7.00),
    ProductData(
      imageLink: 'assets/png_images/product_image_3.png',
      productCategory: "Pants",
      productDescription: "The Pants Brad Pitt Wore at His Wedding",
      rating: 4.9,
      price: 59.99,
    ),
    ProductData(
      imageLink: "assets/png_images/product_image_4.png",
      productCategory: "Jacket",
      productDescription: "Nənəmin Məşhur Güllü Tumanı",
      rating: 5.0,
      price: 99.99,
    ),
  ];
}
