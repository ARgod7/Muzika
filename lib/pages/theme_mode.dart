import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/colors.dart';
import 'package:spotify/utils/constants/image_string.dart';
import 'package:spotify/utils/constants/sizes.dart';
import 'package:spotify/utils/constants/text_string.dart';
import 'package:spotify/widgets/app_button.dart';

class SelectThemeMode extends StatelessWidget {
  const SelectThemeMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AImages.bg2),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        AImages.logo,
                        width: 240,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      "Enjoy Listening to Music",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                    const SizedBox(height: ASizes.spaceBtwItems),
                    const Text(
                      AText.lorem,
                      style: TextStyle(
                          fontSize: 16, color: AColors.textSecondaryLight),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: ASizes.spaceBtwItems),
                    AppButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const SelectThemeMode(),
                          ),
                        );
                      },
                      title: 'Continue',
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
