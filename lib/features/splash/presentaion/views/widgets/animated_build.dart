import 'package:flutter/material.dart';

class SlidText extends StatelessWidget {
  const SlidText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, widget) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              "Read Free Books ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          );
        });
  }
}
