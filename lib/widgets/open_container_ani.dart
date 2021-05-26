import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class OpenContainerAni extends StatefulWidget {
  const OpenContainerAni({Key? key}) : super(key: key);

  @override
  _OpenContainerAniState createState() => _OpenContainerAniState();
}

class _OpenContainerAniState extends State<OpenContainerAni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OpenContainer(
          closedBuilder: (context, action) => Container(
            child: Center(child: Text("Hello")),
            width: 300,
            height: 300,
          ),
          openBuilder: (context, action) => Container(
            child: Scaffold(
                appBar: AppBar(),
                body: Center(
                  child: GestureDetector(
                    onTap: () async {
                      await showModal(
                          context: context,
                          builder: (context) {
                            return Scaffold(
                              appBar: AppBar(),
                              body: Container(
                                child: Center(
                                  child: Text("Hello Modal"),
                                ),
                              ),
                            );
                          });
                    },
                    child: Text(
                      "Hello BIG ME",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
