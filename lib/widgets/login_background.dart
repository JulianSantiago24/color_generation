
import 'dart:math';

import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {

  double horizontal  = 50.0;
  double topOne = 550.0;
  double topTwo = -120;

  @override
  Widget build(BuildContext context) {

    const boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8],
          colors: [
            Color(0xFF2E305F),
            Color(0xff202333),
          ],
        ),
      );

    return Stack(
      children: [
        Container(
          decoration: boxDecoration,
        ),
        Positioned(
          top: topOne,
          left: horizontal,
          child: _BackgroundBox(),
        ),
        Positioned(
          top: topTwo,
          right: horizontal,
          child: _BackgroundBox(),
        )
      ],
    );
  }
}

class _BackgroundBox extends StatelessWidget {
   
  double width  = 360.0;
  double height = 360.0;
  double radius = 50.0;
  double angle = 6.0;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / angle,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(radius),
          gradient: const LinearGradient(
            colors: [
              Color(0xFFEC62BC),
              Color(0xFFFB8EAC),
            ],
          ),
        ),
      ),
    );
  }
}
