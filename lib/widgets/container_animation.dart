import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ContainerAnimation extends StatefulWidget {
  @override
  _ContainerAnimationState createState() => _ContainerAnimationState();
}

class _ContainerAnimationState extends State<ContainerAnimation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: AnimatedContainer(
              width: Random().nextDouble() * 300 + 20,
              height: Random().nextDouble() * 300 + 20,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(
                    Random().nextInt(255),
                    Random().nextInt(255),
                    Random().nextInt(255),
                    Random().nextDouble(),
                  ),
                  borderRadius:
                      BorderRadius.circular(Random().nextDouble() * 40),
                  border: Border.all(
                    width: 2,
                    color: Theme.of(context).accentColor,
                  )),
              duration: Duration(milliseconds: 1500),
              curve: Curves.easeInSine,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: Text("Change Container!")),
        )
      ],
    );
  }
}
