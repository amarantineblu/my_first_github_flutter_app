// ignore_for_file: sized_box_for_whitespace, prefer_typing_uninitialized_variables, avoid_print, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class FirstPageCard extends StatefulWidget {
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
  State<FirstPageCard> createState() => _FirstPageCardState();
}

class _FirstPageCardState extends State<FirstPageCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {Navigator.pushNamed(context, "/single_page")},
      child: Card(
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
                child: Image.asset('images/${widget.image}', fit: BoxFit.cover),

                //   loadingBuilder: (
                //     BuildContext context,
                //     Widget child,
                //     ImageChunkEvent? loadingProgress,
                //   ) {
                //     if (loadingProgress == null) {
                //       return child; // Image loaded
                //     } else {
                //       return Center(
                //         child: CircularProgressIndicator(
                //           value:
                //               loadingProgress.expectedTotalBytes != null
                //                   ? loadingProgress.cumulativeBytesLoaded /
                //                       (loadingProgress.expectedTotalBytes ?? 1)
                //                   : null,
                //         ),
                //       );
                //     }
                //   },
                //   errorBuilder: (context, error, stackTrace) {
                //     // Handle error (e.g., show a placeholder image)
                //     return Icon(Icons.error);
                //   },
                // ),
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
                            Text(
                              widget.bigText,
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              widget.smallText,
                              style: TextStyle(fontSize: 10),
                            ),
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
      ),
    );
  }
}
