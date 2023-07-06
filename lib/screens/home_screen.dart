import 'package:blind_date/models/Product.dart';
import 'package:blind_date/widgets/produt_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> loadedProduct = [
    Product(
      title: 'men 1',
      imageUrl:
          'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzA2MDZfMjE3%2FMDAxNjg2MDYyMTExODQ5.oP0uo2bCM-Gvnmky33obAGh4uEhScj6_6wtXZxXWPCQg.ULRA_ba66t3PCivI20Ejm7ghTjEbA6KsKMOTISV0zrUg.JPEG.sh_life_9401%2Foutput_4277117135.jpg&type=sc960_832',
    ),
    Product(
      title: 'men 2',
      imageUrl:
          'https://namu.wiki/jump/KSs4oRel3bfmNhkJ0Umy5M1DYAVYQTPwrZ5ACbWtHg9G92081fsK%2Fsf2UiHOqHUJmtjX5HS2yxP9Omf%2BaLDP9oIOWdNT1AYnj6hArdGStxw%3D',
    ),
  ];
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Blind Date",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(5), // border padding
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of row
          mainAxisSpacing: 5, // horizontality padding
          crossAxisSpacing: 5, // vertical axis padding
        ),
        itemCount: loadedProduct.length, // number of GridView
        itemBuilder: (context, index) {
          return ProductItem(
            loadedProduct[index].title,
            loadedProduct[index].imageUrl,
          );
        },
      ),
    );
  }
}
