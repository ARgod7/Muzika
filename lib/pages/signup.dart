import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/image_string.dart';
import 'package:spotify/widgets/custom_appbar.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Image.asset(
          AImages.logo,
          height: 40,
        ),
      ),
      body: Column(
        children: [Text('sign up')],
      ),
    );
  }
}
