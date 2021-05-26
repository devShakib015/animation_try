import 'package:animation_try/widgets/container_animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerAnimationPage extends StatelessWidget {
  final String title;

  ContainerAnimationPage({required this.title});

  @override
  Widget build(BuildContext context) {
    print(Navigator.of(context));
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Container(
        child: ContainerAnimation(),
      ),
    );
  }
}
