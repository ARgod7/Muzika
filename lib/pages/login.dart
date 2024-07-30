import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/colors.dart';
import 'package:spotify/utils/constants/image_string.dart';
import 'package:spotify/utils/constants/sizes.dart';
import 'package:spotify/widgets/app_button.dart';
import 'package:spotify/widgets/custom_appbar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Image.asset(
          AImages.logo,
          height: 40,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(ASizes.defaultSpace),
        child: Column(
          children: [
            Text("Login", style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "If you need any support ",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      color: AColors.textSecondaryDark),
                ),
                Text("Click here.",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: AColors.primary500)),
              ],
            ),
            const SizedBox(height: 36),
            const TextField(
              decoration: InputDecoration(
                hintText: "Name",
                hintStyle: TextStyle(color: AColors.grey),
                filled: true,
                fillColor: Colors.transparent,
              ),
            ),
            const SizedBox(height: ASizes.spaceBtwInputField),
            const TextField(
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(color: AColors.grey),
                filled: true,
                fillColor: Colors.transparent,
              ),
            ),
            const SizedBox(height: ASizes.spaceBtwInputField),
            const TextField(
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color: AColors.grey),
                filled: true,
                fillColor: Colors.transparent,
              ),
            ),
            const SizedBox(height: ASizes.spaceBtwSections * 2),
            AppButton(onPressed: () {}, title: "Login")
          ],
        ),
      ),
    );
  }
}
