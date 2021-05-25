import 'dart:math';

import 'package:animation_try/models/images.dart';
import 'package:flutter/material.dart';

class SunAnimation extends StatefulWidget {
  @override
  _SunAnimationState createState() => _SunAnimationState();
}

class _SunAnimationState extends State<SunAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _rotationAnimation =
        Tween<double>(begin: 0.0, end: 2 * pi).animate(_controller);

    _controller.repeat(period: Duration(seconds: 4));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: Image.asset(
        Images.sunImage,
        color: Colors.red,
      ),
      builder: (BuildContext context, Widget? child) => Transform.rotate(
        angle: _rotationAnimation.value,
        child: child,
      ),
    );
  }
}
