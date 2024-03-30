import 'package:flutter/material.dart';
import 'package:task_e_commerce_app_design/data/model/product_data.dart';
import 'package:task_e_commerce_app_design/details_page/details_page.dart';
import 'package:task_e_commerce_app_design/home_page/widgets/product_widget.dart';

class GridViewBuilder extends StatefulWidget {
  const GridViewBuilder({super.key});

  @override
  State<GridViewBuilder> createState() => _GridViewBuilderState();
}

class _GridViewBuilderState extends State<GridViewBuilder> {
  @override
  Widget build(BuildContext context) {
    List<ProductData> productData = ProductData.productData;

    return SizedBox(
      // height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: productData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 300,
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12),
        itemBuilder: (context, index) {
          final product = productData[index];
          return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const DetailsScreen();
                    },
                  ),
                );
              },
              child: ProductWidget(product: product));
        },
      ),
    );
  }
}
