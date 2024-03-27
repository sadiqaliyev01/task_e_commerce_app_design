import 'package:flutter/material.dart';
import 'package:task_e_commerce_app_design/constants/app_colors.dart';

class ProductCategoryText extends StatelessWidget {

  const ProductCategoryText({
    super.key,
    required this.productCategoryText,
  });

  final String productCategoryText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.orange,
      ),
      child: SizedBox(
        height: 22,
        width: 70,
        child: Center(
          child: Text(
            productCategoryText,
            style: TextStyle(color: AppColors.white, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
