class DetailsImagesData {
  String hoodiePath;
  String tshirtPath;
  String jacketPath;
  String pantsPath;

  DetailsImagesData(
      {required this.hoodiePath,
      required this.jacketPath,
      required this.pantsPath,
      required this.tshirtPath});

  static List<DetailsImagesData> detailsData = [
    DetailsImagesData(
      hoodiePath: "assets/png_images/hoodie_1.png",
      jacketPath: "assets/png_images/jacket_1.png",
      pantsPath: "assets/png_images/pants_1.png",
      tshirtPath: "assets/png_images/tshirt_1.png",
    ),

    DetailsImagesData(
      hoodiePath: "assets/png_images/hoodie_2.png",
      jacketPath: "assets/png_images/jacket_2.png",
      pantsPath: "assets/png_images/pants_2.png",
      tshirtPath: "assets/png_images/tshirt_2.png",
    ),

    DetailsImagesData(
      hoodiePath: "assets/png_images/hoodie_3.png",
      jacketPath: "assets/png_images/jacket_3.png",
      pantsPath: "assets/png_images/pants_3.png",
      tshirtPath: "assets/png_images/tshirt_3.png",
    ),

    DetailsImagesData(
      hoodiePath: "assets/png_images/hoodie_4.png",
      jacketPath: "assets/png_images/jacket_4.png",
      pantsPath: "assets/png_images/pants_4.png",
      tshirtPath: "assets/png_images/tshirt_4.png",
    ),

    DetailsImagesData(
      hoodiePath: "assets/png_images/hoodie_5.png",
      jacketPath: "assets/png_images/jacket_5.png",
      pantsPath: "assets/png_images/pants_5.png",
      tshirtPath: "assets/png_images/tshirt_5.png",
    ),
  ];
}
