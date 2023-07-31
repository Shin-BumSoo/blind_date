import 'package:flutter/material.dart';

class ProductsItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  const ProductsItem(this.title, this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
