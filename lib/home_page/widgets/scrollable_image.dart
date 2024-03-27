import 'package:flutter/material.dart';

class ScrollableImage extends StatelessWidget {
  const ScrollableImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 246,
      child: PageView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(24),
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Image.asset("assets/png_images/home_screen_image_1.png")
                  ],
                ),
              ),
            );
          }),
    );
  }
}
