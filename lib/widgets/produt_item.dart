import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  const ProductItem(this.title, this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: const GridTileBar(backgroundColor: Colors.amber),
      child: Image.network(imageUrl, fit: BoxFit.cover),
    );
  }
}
