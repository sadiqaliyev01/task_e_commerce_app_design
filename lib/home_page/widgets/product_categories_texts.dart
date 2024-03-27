import 'package:flutter/material.dart';
import 'package:task_e_commerce_app_design/constants/app_colors.dart';

class ProductCategoriesTexts extends StatelessWidget {
  const ProductCategoriesTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "All",
          style: TextStyle(
              color: AppColors.orange,
              fontWeight: FontWeight.w500,
              fontSize: 16),
        ),
        const Text("Hoodie",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const Text(
          "Jacket",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const Text(
          "Pants",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const Text(
          "T-Shirt",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const Text(
          "Shirt",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const Text(
          "OuterWear",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
