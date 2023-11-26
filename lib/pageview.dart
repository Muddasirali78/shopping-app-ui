

import 'package:flutter/material.dart';
import 'package:hello/Shoppingscreen.dart';
import 'package:hello/onboarding1.dart';
import 'package:hello/onboarding2.dart';

class LPageView extends StatefulWidget {
  @override
  State<LPageView> createState() => _LPageViewState();
}

class _LPageViewState extends State<LPageView> {
  



  @override
  Widget build(BuildContext context) {
    Color rgbaColor = Color.fromARGB(255, 42, 75, 160);
    return Container(
      color: rgbaColor,
      child: PageView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Onboarding1(),
          Onboarding2(),
        ],
      ),
    );
  }
}
