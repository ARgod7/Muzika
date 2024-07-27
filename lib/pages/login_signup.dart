import 'package:flutter/material.dart';
import 'package:spotify/pages/login.dart';
import 'package:spotify/pages/signup.dart';
import 'package:spotify/utils/constants/colors.dart';
import 'package:spotify/utils/constants/image_string.dart';
import 'package:spotify/utils/constants/sizes.dart';
import 'package:spotify/utils/constants/text_string.dart';
import 'package:spotify/utils/helpers/helper_functions.dart';
import 'package:spotify/widgets/app_button.dart';

class LoginSignup extends StatelessWidget {
  const LoginSignup({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              AImages.designTop,
              scale: 3,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(AImages.designBot),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AImages.logo, scale: 4),
                  const SizedBox(height: ASizes.spaceBtwItems * 4),
                  Text(
                    AText.tagline,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: ASizes.spaceBtwItems),
                  Text(
                    AText.about,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                        fontSizeDelta: 4,
                        color: dark
                            ? AColors.textSecondaryLight
                            : AColors.textSecondaryDark),
                  ),
                  const SizedBox(height: ASizes.spaceBtwItems * 2),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: AppButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const LoginPage(),
                                ),
                              );
                            },
                            title: "Login"),
                      ),
                      const SizedBox(width: 40),
                      Expanded(
                        flex: 1,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const SignupPage(),
                                ));
                          },
                          style: OutlinedButton.styleFrom(
                              minimumSize: Size.fromHeight(80)),
                          child: Text("Sign Up"),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
