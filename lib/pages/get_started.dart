import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/image_string.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(AImages.bg1))),
        )
      ],
    ));
  }
}
