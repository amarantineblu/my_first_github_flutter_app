// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, unnecessary_string_escapes, deprecated_member_use

// import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';

import 'package:flutter/material.dart';
// import 'package:flutter_application_1/pages/first_page.dart';

final textDecorationNone = 'none';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "images/pexels-dariuskrs-2609106.jpg",
            // width: 300,
            // height: 300,
            fit: BoxFit.fill,
          ),
          Opacity(
            opacity: 0.5,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: const Color.fromARGB(255, 2, 41, 2),
            ),
          ),
          Positioned(
            // alignment: Alignment.center,
            top: MediaQuery.of(context).size.height * .2,
            left: 20,
            right: 20,
            child: Column(
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
  
                    // decoration: TextDirection
                  ),
                ),
                Text(
                  'Lets Make our Lives better',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            // RichText(
            //   text: TextSpan(
            //     text: 'Explore Your Favourite Journey',
            //     style: TextStyle(
            //       fontFamily: 'Poppins',
            //       fontSize: 30,
            //       color: Colors.white,
            //     ),

            //     children: <TextSpan>[
            //       // TextSpan(text: ''),
            //       TextSpan(
            //         text: 'Lets Make our Lives better',
            //         style: TextStyle(
            //           fontFamily: 'Poppins',
            //           fontSize: 15,
            //           fontWeight: FontWeight.bold,
            //           // color: Colors.blue,
            //         ),
            //       ),
            //       // TextSpan(text: '!'),
            //     ],
            //   ),
            // ),
          ),
          Positioned.fill(
            bottom: 10,
            top: MediaQuery.of(context).size.height * .8,
            child: Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(24),
                ),

                // style: BorderRadius.circular(30),
                onPressed: () => {Navigator.pushNamed(context, "/first_page")},
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
          ),
        ],
      ),
    );
  }
}
