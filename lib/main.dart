import 'package:animation_try/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
