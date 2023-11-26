import 'package:flutter/material.dart';
import 'package:hello/Shoppingscreen.dart';
import 'package:hello/pageview.dart';
import 'onboarding1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:  LPageView(),
      ),
    );
  }
}


