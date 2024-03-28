import 'package:flutter/material.dart';

class ProductGridview extends StatelessWidget {
  const ProductGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        return Container(
          width: 50,
          height: 50,
          color: Colors.orange,
        );
      },
    );
  }
}
