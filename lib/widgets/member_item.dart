import 'package:flutter/material.dart';

class MemberItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const MemberItem(this.id, this.title, this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(imageUrl, fit: BoxFit.cover),
    );
  }
}
