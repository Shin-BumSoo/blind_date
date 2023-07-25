import 'package:blind_date/screens/grid_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Blind Date",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: GridScreen(),
    );
  }
}
