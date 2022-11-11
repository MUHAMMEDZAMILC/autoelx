import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:autoelx/common/colors.dart';

import 'package:autoelx/home/homepage.dart';
import 'package:autoelx/sign_in_up/sign_main_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
            duration: 2000,
            backgroundColor: greycolor,
            splash:Image.asset('assets/images/logo.png',) ,
            nextScreen: const SignMainPage(),
            splashTransition: SplashTransition.fadeTransition,
            splashIconSize: 120,
            );
  }
}