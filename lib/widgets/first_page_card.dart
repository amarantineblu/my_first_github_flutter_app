// ignore_for_file: sized_box_for_whitespace, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class FirstPageCard extends StatelessWidget {
  final String image;
  final String bigText;
  final String smallText;
  const FirstPageCard({
    super.key,
    required this.image,
    required this.bigText,
    required this.smallText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.only(right: 5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Container(
        // padding: EdgeInsets.all(16),
        width: 300,
        height: MediaQuery.of(context).size.height * .6,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset('images/$image', fit: BoxFit.cover),
            ),
            Positioned(
              bottom: 0,
              // top: ,
              left: 0,
              right: 0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 10,
                      ),
                      child: Column(
                        children: [
                          Text(bigText, style: TextStyle(fontSize: 20)),
                          Text(smallText, style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                  ),
                  Positioned(child: Card()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
