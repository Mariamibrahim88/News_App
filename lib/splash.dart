
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:news_app2/views/nav.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';


class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
          backgroundColor: Colors.white38,
          splashIconSize: 200,
          splashTransition: SplashTransition.rotationTransition,
          splash:
          Lottie.asset('assets/animation2.json'),
          nextScreen: Nav(),

    );
  }
}
