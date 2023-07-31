import 'package:blind_date/models/product.dart';
import 'package:blind_date/widgets/product_item.dart';
import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  const GridScreen({
    super.key,
    required this.loadedProduct,
  });

  final List<Products> loadedProduct;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Tap!");
      },
      child: GridView.builder(
        padding: const EdgeInsets.all(5), // border padding
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of row
          mainAxisSpacing: 5, // horizontality padding
          crossAxisSpacing: 5, // vertical axis padding
        ),
        itemCount: loadedProduct.length, // number of GridView
        itemBuilder: (context, index) {
          return ProductsItem(
            loadedProduct[index].title,
            loadedProduct[index].imageUrl,
          );
        },
      ),
    );
  }
}
