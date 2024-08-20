import 'package:flutter/material.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';
import 'package:spotify/domain/usecases/signup.dart';
import 'package:spotify/pages/login.dart';
import 'package:spotify/service_locator.dart';
import 'package:spotify/utils/constants/colors.dart';
import 'package:spotify/utils/constants/image_string.dart';
import 'package:spotify/utils/constants/sizes.dart';
import 'package:spotify/widgets/app_button.dart';
import 'package:spotify/widgets/custom_appbar.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final TextEditingController _fullname = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _email = TextEditingController();

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
              "Sign Up",
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
            TextField(
              controller: _fullname,
              decoration: const InputDecoration(
                hintText: "Full Name",
                hintStyle: TextStyle(color: AColors.grey),
                filled: true,
                fillColor: Colors.transparent,
              ),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: _email,
              decoration: const InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(color: AColors.grey),
                filled: true,
                fillColor: Colors.transparent,
              ),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: _password,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color: AColors.grey),
                filled: true,
                fillColor: Colors.transparent,
              ),
            ),
            const SizedBox(height: 50),
            AppButton(
                onPressed: () async {
                  var result = await sl<SignupUseCase>().call(
                    params: CreateUserReq(
                      email: _email.text.toString(),
                      password: _password.text.toString(),
                      fullName: _fullname.text.toString(),
                    ),
                  );
                  result.fold(
                    (l) {},
                    (r) {},
                  );
                },
                title: "Create Account"),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .apply(fontSizeFactor: 1.3)),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const LoginPage(),
                      ),
                    );
                  },
                  child: Text("Login",
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
