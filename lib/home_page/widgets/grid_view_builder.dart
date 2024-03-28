import 'package:flutter/material.dart';
import 'package:task_e_commerce_app_design/data/model/product_data.dart';
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

    return Expanded(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: GridView.builder(
          //shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: productData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            final product = productData[index];
            return ProductWidget(product: product);
          },
        ),
      ),
    );
  }
}
