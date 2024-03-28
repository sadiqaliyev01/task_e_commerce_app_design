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
        SizedBox(width: 20),
        Expanded(
          flex: 6,
          child: Search(),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 1,
          child: AppIcons(
            icon: Icon(Icons.notifications_none_outlined),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 1,
          child: AppIcons(
            icon: Icon(Icons.shopping_basket_outlined),
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
