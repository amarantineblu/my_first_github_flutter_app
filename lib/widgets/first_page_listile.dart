// import 'dart:ui';

// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class FirstPageListile extends StatelessWidget {
  final Image image;
  final String bigText;
  final String smallText;
  const FirstPageListile({
    super.key,
    required this.image,
    required this.bigText,
    required this.smallText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),

      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          image,
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bigText,

                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: const Color.fromARGB(241, 255, 255, 255),
                  ),
                ),
                Text(
                  smallText,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(238, 255, 255, 255),
                  ),
                ),
              ],
            ),
          ),
        ],

        // $icondata,
      ),
    );
  }
}
