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

  @override
  Widget build(BuildContext context) {
    List<DetailsImagesData> detailsData = DetailsImagesData.detailsData;
    int index = 0;
    final data = detailsData[index];
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
        body: Column(children: [
          const SizedBox(height: 20),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  data.hoodiePath;
                  setState(() {});
                },
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(data.hoodiePath),
                ),
              ),
              GestureDetector(
                onTap: () {
                  data.hoodiePath;
                  setState(() {});
                },
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.network(
                    data.hoodiePath,
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
