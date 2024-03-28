import 'package:flutter/material.dart';
import 'package:task_e_commerce_app_design/constants/app_colors.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/grid_view_builder.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/home_screen_above_side.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/product_categories_texts.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/scrollable_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isPressed = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: const SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              HomeScreenAboveSide(),
              ScrollableImage(),
              ProductCategoriesTexts(),
              SizedBox(height: 20),
              GridViewBuilder(),
            ],
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            selectedItemColor: AppColors.orange,
            unselectedItemColor: AppColors.black,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.explore_outlined), label: "Explore"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border_outlined),
                  label: "Wishlist"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message_outlined), label: "Message"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined), label: "Profile"),
            ],
          ),
        ),
      ),
    );
  }
}
