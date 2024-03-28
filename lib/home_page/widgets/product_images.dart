import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({super.key, required this.imageLink});

  final String imageLink;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Image.asset(
            widget.imageLink,
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              icon: Icon(
                isPressed ? Icons.favorite : Icons.favorite_border_outlined,
                color: Colors.orange,
              ),
              onPressed: () {
                setState(() {
                  isPressed = !isPressed;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
