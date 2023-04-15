import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_application_1/pages/login_screen.dart';




import 'dart:async';
import 'package:flutter/material.dart';

import '../widgets/animated_circle.dart';
import '../widgets/animated_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
double opacityLevel = 1.0;

  void changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    );
    _animationController.forward();
    textAnimation();
    Timer(const Duration(milliseconds: 1200), () {
      Navigator.push(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 2000),
          pageBuilder: (_, __, ___) => const LoginScreen(),
          transitionsBuilder:
              (context, animation, secondaryAnimation, child) {
            var begin = const Offset(0.0, -1.0);
            var end = Offset.zero;
            var tween = Tween(begin: begin, end: end);
            var curvedAnimation =
                CurvedAnimation(parent: animation, curve: Curves.ease);
            return SlideTransition(
              position: tween.animate(curvedAnimation),
              child: child,
            );
          },
        ),
      
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
          children: [
            CustomPaint(
              painter: CirclePainter(_animationController),
              child: const SizedBox(
                width: 200,
                height: 200,
              ),
            ),
           Center(
          child: AnimatedText(opacityLevel: opacityLevel),
        ),
          ],
        ),
      );
  }
  Future textAnimation() async {
  await Future.delayed(const Duration(milliseconds: 500));
  changeOpacity();
}
}








