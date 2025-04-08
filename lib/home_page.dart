// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, unnecessary_string_escapes, deprecated_member_use, unused_import, sort_child_properties_last, no_leading_underscores_for_local_identifiers

// import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:flutter_application_1/pages/first_page.dart';

final textDecorationNone = 'none';
final fontFamily = 'Poppins';
final textDecoration = TextDecoration.none;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          Builder(
            builder: (context) {
              final GlobalKey<SlideActionState> _key = GlobalKey();
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SlideAction(
                  sliderRotate: false,

                  key: _key,
                  onSubmit: () {
                    // Future.delayed(
                    //   Duration(seconds: 1),
                    //   () => _key.currentState!.reset(),
                    // );
                    Navigator.pushNamed(context, '/first_page');
                  },
                  alignment: Alignment.centerRight,

                  child: Icon(Icons.double_arrow_rounded, color: Colors.white),
                  sliderButtonIcon: Text('Go'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
