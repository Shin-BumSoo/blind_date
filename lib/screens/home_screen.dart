import 'package:blind_date/models/product.dart';
import 'package:blind_date/screens/grid_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Products> loadedProduct = [
    Products(
      title: 'Dave',
      imageUrl:
          'https://i.namu.wiki/i/x3alhfym7xoK3cSlvY2-QmcWhzhhE7XMuwVkdswU2Sc5MDalRt3Xz9_EHhEYlCAhvxZt9q5hif4N__tj8TFWDcg6mfAftlBjYkt0qmybe8NSPZv3vRPnAv9DKnbfFBqdaB7QVrfpzrXyTaXoR8jFrw.webp',
    ),
    Products(
      title: 'Bob',
      imageUrl:
          'https://i.namu.wiki/i/AWI8BPFNLKLtf6a3kvr_tNRHE_5HX128mneyIuA05N8m-hsjobqhjC2-0v1P6HBSA_MlDZYU4brbwOx2mErD6W2fwR57iCtKHcbdgZbAJ-r6jx4gt822AiO92XK9tEZF7sE5i6LyPopfmAdCTiMIZA.webp',
    ),
    Products(
      title: 'Otto',
      imageUrl:
          'https://i.namu.wiki/i/e9C2oamdngF8zNM3cilpVj5xIOkpoVVDap800pQruFyom4mgrLTlXs3ABMD3MAQr_s7_BEWxwu3ZBt76t3vrBxPP51miSFNMV0S8kybcKbuN0jhT27zSqep72yIUYOgTgzrHjCJuywUNFiV2QTaRcg.webp',
    ),
    Products(
      title: 'Mel',
      imageUrl:
          'https://i.namu.wiki/i/zaOhRlQOrd5c7ldhwBBlxePPzJjNmxbPWLXPv9_3FpzWcT1m2fBdGmxMVrAXUHvAutVniOzOSH9EvJisrCUrt9wp-so9EtH4nXY0KP69Uvd25MqItImipPngVoGNQJ07WUFoM3I2wl23srFjsVNwfA.webp',
    ),
    Products(
      title: 'Stuart',
      imageUrl:
          'https://i.namu.wiki/i/QXDbyJmRvMvTBmEzJvNEVxaLK5RpjfBrdz3ut983A1VOlxLowoXFEpl2Dm55eNrk3Xqq3tbU2VeAqisCnWWf60PPOe7XHfANeB2s_FMUrTU84s5CrlnWW3SQRAQmsFRBYNsVUkBgOsfMiZxgSa2sdQ.webp',
    ),
    Products(
      title: 'Kevin',
      imageUrl:
          'https://i.namu.wiki/i/g-_q0wuZbDdzrnn3cCMjX48YmzBvYSGu2_hqpreVyfg9INur6OdcYzD3kTsEoJatpN69SVrRHA5tgViHHouyrLOwFIct0_dDqvYT0qJ9gmdAC5PnB_rsDXlUgeNjhwjMrSv_3FRtEDEkP71XEks5IQ.webp',
    ),
  ];
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
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
      body: GridScreen(loadedProduct: loadedProduct),
    );
  }
}
