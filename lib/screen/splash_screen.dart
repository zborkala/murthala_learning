import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:murthala_learning/screen/main_screen.dart';
import 'package:page_animation_transition/animations/bottom_to_top_transition.dart';
import 'package:page_animation_transition/animations/fade_animation_transition.dart';
import 'package:page_animation_transition/animations/rotate_animation_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    startTimer() {
      Navigator.of(context).push(PageAnimationTransition(
          page: const MainScreen(),
          pageAnimationType: FadeAnimationTransition()));
    }

    startTimer();

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.amber,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "GladsMe Library".toUpperCase(),
                style: TextStyle(
                    fontSize: 29.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    color: Colors.white70),
              ),
              Text(
                "Best Library Management System",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black38,
                    decoration: TextDecoration.underline),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                child: LoadingIndicator(
                  indicatorType: Indicator.ballPulse,
                  strokeWidth: 2.0,
                  colors: [
                    Colors.blueGrey,
                    Color.fromARGB(255, 183, 181, 181),
                    Color.fromARGB(255, 202, 202, 202),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
