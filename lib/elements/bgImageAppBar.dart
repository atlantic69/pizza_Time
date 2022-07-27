import 'package:flutter/material.dart';

//фоновое изображение AppBar
class BgImageAB extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('bghead.jpg'),
          fit: BoxFit.fitWidth,
          opacity: 0.05,
        ),
      ),
    );
  }
}