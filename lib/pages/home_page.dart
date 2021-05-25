import 'package:animation_try/pages/sun_animation_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, Widget>> _pages = [
      {
        "Sun Animation Page": SunAnimationPage(
          title: "Sun Animation Page",
        ),
      },
      {
        "Sun Animation Page": SunAnimationPage(
          title: "Sun Animation Page",
        ),
      },
      {
        "Sun Animation Page": SunAnimationPage(
          title: "Sun Animation Page",
        ),
      },
      {
        "Sun Animation Page": SunAnimationPage(
          title: "Sun Animation Page",
        ),
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Animation App"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 16),
        child: GridView.count(
          crossAxisCount: 2,
          children: _pages
              .map((page) => Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => page.values.toList()[0],
                          ),
                        );
                      },
                      child: Card(
                        color: Theme.of(context).accentColor,
                        child: GridTile(
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                page.keys.toList()[0].toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
