import 'package:flutter/material.dart';
import 'package:task_e_commerce_app_design/global_widgets/app_icons.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/search.dart';

class HomeScreenAboveSide extends StatefulWidget {
  const HomeScreenAboveSide({super.key});

  @override
  State<HomeScreenAboveSide> createState() => _HomeScreenAboveSideState();
}

class _HomeScreenAboveSideState extends State<HomeScreenAboveSide> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Search(),
        AppIcons(icon: Icon(Icons.notifications_none_outlined)),
        AppIcons(icon: Icon(Icons.shopping_basket_outlined)),
      ],
    );
  }
}
