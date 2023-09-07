import 'package:flutter/material.dart';

import 'package:blaze_stream/pages/background.dart';


class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
     final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body:  Stack(
        children: [
          Back_Ground(),
         SizedBox(
         height: screenHeight,
         width: screenWidth,
          child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/blazeLogo.png"))
              ),
             )
          ],

        ),
)
      ]),
    );
  }
}