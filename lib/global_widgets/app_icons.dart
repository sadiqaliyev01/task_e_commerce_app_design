import 'package:flutter/material.dart';

class AppIcons extends StatelessWidget {
  const AppIcons({super.key, required this.icon});

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xfff0f0f0),
      ),
      child: IconButton(
        onPressed: () {},
        icon: icon,
      ),
    );
  }
}
