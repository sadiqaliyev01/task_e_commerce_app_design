import 'package:flutter/material.dart';
import 'package:task_e_commerce_app_design/constants/app_colors.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/home_screen_above_side.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/product.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/product_categories_texts.dart';
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: const SingleChildScrollView(
          child:  Column(
            children: [
              SizedBox(height: 30),
              HomeScreenAboveSide(),
              ScrollableImage(),
              SizedBox(height: 30),
              ProductCategoriesTexts(),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Product(
                        imageLink: 'assets/png_images/product_image_1.png',
                        productCategory: 'Hoodie',
                        productDescription: 'Thug Life Unisex Black Hoodie',
                        rating: 4.8,
                        price: 17.00,
                      ),
                      Product(
                          imageLink: "assets/png_images/product_image_2.png",
                          productCategory: "T-Shirt",
                          productDescription: "Oversize Patterned White Cotton T-Shirt",
                          rating: 4.8,
                          price: 7.00),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Product(
                        imageLink: 'assets/png_images/product_image_3.png',
                        productCategory: "Pants",
                        productDescription:
                            "The Pants Brad Pitt Wore at His Wedding",
                        rating: 4.9,
                        price: 59.99,
                      ),
                      Product(
                        imageLink: "assets/png_images/product_image_4.png",
                        productCategory: "Jacket",
                        productDescription: "Nənəmin Məşhur Güllü Tumanı",
                        rating: 5.0,
                        price: 99.99,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
