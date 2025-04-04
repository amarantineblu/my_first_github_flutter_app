// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, unnecessary_string_escapes, deprecated_member_use

// import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';

import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:flutter_application_1/pages/first_page.dart';

final textDecorationNone = 'none';
final fontFamily = 'Poppins';
final textDecoration = TextDecoration.none;

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   boxShadow: Shadow(color: const Color.fromARGB(255, 99, 98, 98),)
      // ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        fit: StackFit.expand,
        children: [
          //Image property
          Image.asset(
            "images/pexels-dariuskrs-2609106.jpg",
            // width: 300,
            // height: 300,
            fit: BoxFit.fill,
          ),

          // The Overlay in the Image
          Opacity(
            opacity: 0.5,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: const Color.fromARGB(255, 2, 41, 2),
            ),
          ),

          //The text in the middle
          Positioned(
            // alignment: Alignment.center,
            top: MediaQuery.of(context).size.height * .2,
            left: 20,
            right: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 100,
                // padding: EdgeInsets.all(15),
                // height: 200,
                child: Stack(
                  alignment: Alignment(0, 0),
                  children: [
                    //blur effect
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(),
                    ),

                    //gradient
                    Positioned.fill(
                      // padding: EdgeInsets.all(15),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(
                            color: Colors.white.withOpacity(.2),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white.withOpacity(.2),
                              Colors.white.withOpacity(.1),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //child
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Explore Your Favourite Journey',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            // decoration: TextDirection
                          ),
                        ),
                        Text(
                          'Lets Make our Lives better',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          //The button below
          Positioned.fill(
            bottom: 10,
            top: MediaQuery.of(context).size.height * .7,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .3,
                  width: MediaQuery.of(context).size.height * .08,

                  // color: Colors.white,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.white.withOpacity(.8),
                        Colors.white.withOpacity(.2),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 70,
                  child: Icon(Icons.keyboard_double_arrow_up_rounded, size: 25),
                ),
                Positioned(
                  bottom: 0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(10),
                    ),

                    // style: BorderRadius.circular(30),
                    onPressed:
                        () => {Navigator.pushNamed(context, "/first_page")},
                    child: Text(
                      'Go',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
