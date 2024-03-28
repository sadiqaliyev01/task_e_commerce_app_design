import 'package:flutter/material.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/product_category_text.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/product_images.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/product_price.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/product_rating.dart';

class Product extends StatefulWidget {
  final String imageLink;
  final String productCategory;
  final String productDescription;
  final double rating;
  final double price;

  const Product({
    super.key,
    required this.imageLink,
    required this.productCategory,
    required this.productDescription,
    required this.rating,
    required this.price,
  });

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  bool isPressed = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(
          imageLink: widget.imageLink,
        ),
        Container(
          color: Colors.white,
          height: 120,
          width: 200,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductCategoryText(
                    productCategoryText: widget.productCategory),
                const SizedBox(height: 10),
                Text(
                  widget.productDescription,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Expanded(
                      child: ProductRating(
                        ratingNumber: widget.rating.toString(),
                      ),
                    ),
                    Expanded(
                      child: ProductPrice(
                        priceAmount: widget.price.toStringAsFixed(2),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
