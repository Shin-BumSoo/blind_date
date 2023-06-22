import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of row
          mainAxisSpacing: 5, // horizontality padding
          crossAxisSpacing: 5, // vertical axis padding
        ),
        itemCount: 200, // number of GridView
        itemBuilder: (context, index) {
          return Container(
            color: Colors.lightGreen,
            child: Text(' Item : $index'),
          );
        },
      ),
    );
  }
}
