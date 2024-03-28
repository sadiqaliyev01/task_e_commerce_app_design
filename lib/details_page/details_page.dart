import 'package:flutter/material.dart';
import 'package:task_e_commerce_app_design/constants/app_colors.dart';
import 'package:task_e_commerce_app_design/global_widgets/app_icons.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          title: const Text("Detail",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          centerTitle: true,
          actions: const [
            AppIcons(icon: Icon(Icons.share_outlined)),
            SizedBox(width: 10),
            AppIcons(icon: Icon(Icons.message_outlined)),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
