import 'package:flutter/material.dart';
import 'package:spotify/pages/signup.dart';
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
            const SizedBox(height: 20),
            const Text(
              "Login",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Row(
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
            const SizedBox(height: 50),
            const TextField(
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(color: AColors.grey),
                filled: true,
                fillColor: Colors.transparent,
              ),
            ),
            const SizedBox(height: 24),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color: AColors.grey),
                filled: true,
                fillColor: Colors.transparent,
              ),
            ),
            const SizedBox(height: 50),
            AppButton(onPressed: () {}, title: "Login"),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Dont have an account?",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .apply(fontSizeFactor: 1.3)),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => SignupPage(),
                      ),
                    );
                  },
                  child: Text("Sign Up",
                      style: Theme.of(context).textTheme.labelMedium!.apply(
                          fontSizeFactor: 1.3, color: AColors.primary300)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
