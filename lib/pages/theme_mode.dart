import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/bloc/theme_cubit.dart';
import 'package:spotify/pages/splash.dart';
import 'package:spotify/utils/constants/colors.dart';
import 'package:spotify/utils/constants/image_string.dart';
import 'package:spotify/utils/constants/sizes.dart';
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
                      "Choose Mode",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                    const SizedBox(height: ASizes.spaceBtwItems * 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                context
                                    .read<ThemeCubit>()
                                    .updateTheme(ThemeMode.dark);
                              },
                              child: ClipOval(
                                child: SizedBox(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 10, sigmaY: 10),
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color:
                                              AColors.softGrey.withOpacity(0.2),
                                          shape: BoxShape.circle),
                                      child: Image.asset(
                                        AImages.moon,
                                        scale: 4,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: ASizes.spaceBtwItems / 2),
                            Text(
                              'Dark Mode',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .apply(color: AColors.textPrimaryLight),
                            )
                          ],
                        ),
                        const SizedBox(width: 40),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                context
                                    .read<ThemeCubit>()
                                    .updateTheme(ThemeMode.light);
                              },
                              child: ClipOval(
                                child: SizedBox(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 10, sigmaY: 10),
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color:
                                              AColors.softGrey.withOpacity(0.2),
                                          shape: BoxShape.circle),
                                      child: Image.asset(
                                        AImages.sun,
                                        scale: 3.5,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: ASizes.spaceBtwItems / 2),
                            Text(
                              'Light Mode',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .apply(color: AColors.textPrimaryLight),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: ASizes.spaceBtwSections * 2),
                    AppButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const SplashPage(),
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
