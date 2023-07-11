import 'package:blind_date/models/Product.dart';
import 'package:blind_date/widgets/produt_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> loadedProduct = [
    Product(
      id: 'p1',
      title: '1',
      description: '1',
      imageUrl:
          'https://i.namu.wiki/i/McJZK6-_MnpLBl-yXr79ZvvTgXN7ITRTa6mlSJV_IKxI6088I-x8CW6jF8xZTU2x00nP9zCCj7wwgSxVs0ZXQIq1txlfLd0WNk1K94lSJxeqjcI1li3530RXfFVAhMzYu2xm_kpouYgcSPHjti0UJA.webp',
    ),
    Product(
      id: 'p2',
      title: '2',
      description: '2',
      imageUrl:
          'https://thumb.mt.co.kr/06/2023/02/2023021609517277874_1.jpg/dims/optimize/',
    ),
    Product(
      id: 'p3',
      title: '3',
      description: '3',
      imageUrl:
          'https://i.namu.wiki/i/6E-HTCFHUmymUy5Sg971elXvbwlAtWulXgUSOB4KvJk58h8JhO-2FEQcfsugIGDNV7TuKpnIT6c35lxg1-or2P-uoFeBbSY_5sjYjTylAI3RyL9dIwK-dn5pif9qioT3ML3-UGhcYGVGq0SS-de8nA.webp',
    ),
    Product(
      id: 'p4',
      title: '4',
      description: '4',
      imageUrl:
          'https://i.namu.wiki/i/Ay0lIPQQalEDb1btLfb8J6hZFFJCVQcPrzKKJIUKxNOazJ60MJfsnMHuRt6pNk47D1SwaglZVM14dP0LFdIL_ZKVl4imED18MZlQnXcvWklDE1r-3RrB6j39EdtQl66zpsu1u8EPnhpljk0ruHfVfA.webp',
    ),
    Product(
      id: 'p5',
      title: '5',
      description: '5',
      imageUrl:
          'https://i.namu.wiki/i/PLqwEv_7dUqG6PzaUEXX4oWe-wyT4e05H-tqQ5ymZqt6YvT1pcBKp1wF2KOxK9al8Y_UTby33FKdRsvyx9FjgoIMCxODYJuky-Js5U9_3-NX7nde3dtA3xdxCdvwsXIIqK97MBM76T_htAn72rUjqg.webp',
    ),
    Product(
      id: 'p6',
      title: '6',
      description: '6',
      imageUrl:
          'https://i.namu.wiki/i/EoS9DWvvIkDeRZJ4Y2XVjx_x9AOFd2Mr91ssIuLO6wgSM_8f1rGpK_yoeQQ-2_KOFJHuYn-j3mfaT-UBAD39zK-RXTFk4-AmLtsd1GbH42o3iZo5o5xvd4x9dnwl8X4ZQhEcQOgr-JKOKcbeE7Uodg.webp',
    ),
    Product(
      id: 'p7',
      title: '7',
      description: '7',
      imageUrl:
          'https://i.namu.wiki/i/LNASdm8ZdX8k29JvAiOaXDOZ0hZwK66zkfkqpMNL4LQE9ACqNdd79gBkOcxfIEKr8xJfslAoQjUPB_EIXcJSl_Wkc1B8MkgJ8McUznB_m8VLKgbCe2Daz_RKejUGdkz28Utp-9zYI6xWDR8MiaSZNg.webp',
    ),
    Product(
      id: 'p8',
      title: '8',
      description: '8',
      imageUrl:
          'https://i.namu.wiki/i/2tfw7BXl2aJMPR1Nd8yu5Br44PuWMGUUqPAwdXHyW7pM07BHX3Xv7VmdSfJh_M2HQ_sKxBSn7OAIuwL-WsHj5lODZ_8Dh-8vNKzBIvyPS5M7zq1ihk-z0AuO_NkjPRaJYXYXrdpD7QZGt8qariO2sg.webp',
    ),
  ];
  HomeScreen({super.key});

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
            loadedProduct[index].id,
            loadedProduct[index].title,
            loadedProduct[index].imageUrl,
          );
        },
      ),
    );
  }
}
