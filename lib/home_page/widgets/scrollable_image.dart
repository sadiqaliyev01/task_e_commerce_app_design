import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollableImage extends StatelessWidget {
  const ScrollableImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.8),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Expanded(child: Image.asset("assets/png_images/home_screen_image_1.png"))
                ],
              ),
            );
          }),
    );
  }
}
