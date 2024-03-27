import 'package:flutter/material.dart';
import 'package:task_e_commerce_app_design/constants/app_colors.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 320,
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: const Icon(Icons.search),
          filled: true,
          fillColor: AppColors.iconsColor,
          hintText: "Search",
          hintStyle: TextStyle(color: AppColors.black),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
