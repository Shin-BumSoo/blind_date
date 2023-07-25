import 'package:flutter/material.dart';

class Members with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final String imageUrl;

  Members({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}
