import 'package:flutter/material.dart';
import 'package:task_e_commerce_app_design/constants/app_colors.dart';
import 'package:task_e_commerce_app_design/data/model/details_images_data.dart';
import 'package:task_e_commerce_app_design/global_widgets/app_icons.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  String imageLocation = "assets/png_images/tshirt_2.png";
  int selectedImg = 0;

  @override
  Widget build(BuildContext context) {
    List<DetailsImagesData> detailsData = DetailsImagesData.detailsData;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          title: const Text(
            "Detail",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: const [
            AppIcons(icon: Icon(Icons.share_outlined)),
            SizedBox(width: 10),
            AppIcons(icon: Icon(Icons.message_outlined)),
            SizedBox(width: 10),
          ],
        ),
        body: Column(
          children: [
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(color: AppColors.iconsColor),
                    child: Image.asset(
                      detailsData[selectedImg].imagePath[selectedImg],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ...List.generate(
                  detailsData.length,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedImg = index;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: AppColors.iconsColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Image.asset(
                          detailsData[selectedImg].imagePath[index]),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
