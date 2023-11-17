import 'dart:async';

import 'package:flutter/material.dart';

import 'home_screen.dart';



class Splash extends StatelessWidget {
  static String routeName = "Splash";

  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routename);
    });

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/splash.png"))),
    );
  }
}