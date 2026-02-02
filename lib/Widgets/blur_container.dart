import 'dart:ui';

import 'package:flutter/material.dart';

class BlurContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget? childG;
  const BlurContainer(
      {super.key, required this.height, required this.width, this.childG});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ClipRRect(
        child: Stack(
          children: [
            BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
                child: SizedBox(
                  height: height,
                  width: width,
                )),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Colors.white54, Colors.white30]),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: childG,
            )
          ],
        ),
      ),
    );
  }
}
