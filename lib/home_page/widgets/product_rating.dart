import 'package:flutter/material.dart';

class ProductRating extends StatelessWidget {
  const ProductRating({super.key, required this.ratingNumber});
  final String ratingNumber;
  @override
  Widget build(BuildContext context) {
    return Text(
      ratingNumber,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      textAlign: TextAlign.start,
    );
  }
}
