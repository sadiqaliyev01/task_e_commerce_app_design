import 'package:flutter/material.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/product_category_text.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/product_images.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/product_price.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/product_rating.dart';
import 'package:task_e_commerce_app_design/data/model/product_data.dart';

class ProductWidget extends StatelessWidget {
  final ProductData product;

  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(
          imageLink: product.imageLink,
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            //width: MediaQuery.of(context).size.width / 2,
            height: 100, // Adjust as needed
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductCategoryText(
                      productCategoryText: product.productCategory),
                  const SizedBox(height: 5),
                  Flexible(
                    // Allows description to adapt
                    child: Text(
                      product.productDescription,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14, // Adjust font size
                      ),
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
                          ratingNumber: product.rating.toString(),
                        ),
                      ),
                      Expanded(
                        child: ProductPrice(
                          priceAmount: product.price.toStringAsFixed(2),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
