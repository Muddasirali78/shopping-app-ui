import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hello/Shoppingscreen.dart';
import 'package:hello/onboarding2.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
   void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
      () {
        Navigator.of(context).pushReplacement(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => Onboarding2(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0);
              const end = Offset.zero;
              const curve = Curves.easeInOut;
              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);
              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            },
          ),
        );
      },
    );
  }
  Color rgbaColor = Color.fromARGB(255, 42, 75, 160);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rgbaColor,
      body: Padding(
        padding: EdgeInsets.only(left: 25, top: 80),
        child: Column(
          children: [
            Text(
              "Your holiday       Shopping                      delivered to Screen",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
              ),
            ),
            Row(
              children: [
                Text(
                  "One    ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
                Image.asset("assets/Emoji.png"),
              ],
            ),
            Text(
              "There's something for everyone                to enjoy with Sweet Shop                  Favourites Screen 1",
              style: TextStyle(
                color: const Color.fromARGB(136, 255, 255, 255),
                fontSize: 20,
                fontWeight: FontWeight.w100,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 35,
                  height: 3.75,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(94, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Onboarding2()));
                      },style: ButtonStyle(
 backgroundColor: MaterialStatePropertyAll( Color.fromARGB(94, 255, 255, 255),)
                      ),
                      child: Container()),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 40,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Onboarding2()));
                    },
                  
                      
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(right: 100, top: 70)),
            Image.asset(
              "assets/Image Icon.png",
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 228,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShoppingScreen()));
                },
                child: Row(
                  children: [
                    Text(
                      "   Get Started",
                      style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Icon(
                      Icons.arrow_right_alt_outlined,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
    ),);
  }
}
