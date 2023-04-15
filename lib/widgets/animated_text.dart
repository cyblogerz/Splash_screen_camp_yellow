import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
    required this.opacityLevel,
  });

  final double opacityLevel;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(

      duration: const Duration(milliseconds: 500),
      opacity: opacityLevel,
      child: const Text(
        'Camp Yellow',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}