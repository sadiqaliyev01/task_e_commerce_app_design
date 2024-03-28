import 'package:flutter/material.dart';
import 'package:task_e_commerce_app_design/constants/app_colors.dart';
import 'package:task_e_commerce_app_design/data/model/product_data.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/home_screen_above_side.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/product_categories_texts.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/product_category_text.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/product_images.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/product_price.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/product_rating.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/scrollable_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isPressed = true;

  @override
  Widget build(BuildContext context) {
    List<ProductData> productData = ProductData.productData;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          // Enables scrolling
          child: Column(
            children: [
              const SizedBox(height: 30),
              const HomeScreenAboveSide(),
              const ScrollableImage(),
              const ProductCategoriesTexts(),
              const SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                itemCount: productData.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  final product = productData[index];
                  return Column(
                    children: [
                      ProductImages(
                        imageLink: product.imageLink,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ProductCategoryText(
                                  productCategoryText: product.productCategory,
                                ),
                                const SizedBox(height: 5),
                                Flexible(
                                  child: Text(
                                    product.productDescription,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
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
                                        priceAmount:
                                            product.price.toStringAsFixed(2),
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
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
