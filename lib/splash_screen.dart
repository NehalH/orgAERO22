import 'package:org_aero22/main.dart';
import 'main.dart';
import 'challenger_info.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);
  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.black,
      splash:Image.asset(
        'assets/images/Aerophilia-logo-White.png',
      ),
      nextScreen: const MyHomePage(),
      splashTransition: SplashTransition.fadeTransition,
      splashIconSize: 40,
      duration: 2000,
    );
  }
}