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
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: 200,
          child: Image.asset(
            widget.imageLink,
            fit: BoxFit.cover,
          ),
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
    );
  }
}
