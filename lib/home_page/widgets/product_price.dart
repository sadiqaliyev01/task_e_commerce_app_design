import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({super.key, required this.priceAmount});

  final String priceAmount;

  @override
  Widget build(BuildContext context) {
    return Text(
      "\$$priceAmount",
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: Colors.orange,
      ),
      textAlign: TextAlign.end,
    );
  }
}
