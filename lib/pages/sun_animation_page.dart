import 'package:animation_try/widgets/sun_animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SunAnimationPage extends StatelessWidget {
  final String title;

  SunAnimationPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: SunAnimation(),
        ),
      ),
    );
  }
}
