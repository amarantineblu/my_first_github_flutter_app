import 'dart:ui';

import 'package:flutter/material.dart';

class FirstPageListile extends StatelessWidget {
  final String image;
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
    return ListTile(
      leading: Image.asset('images/$image', fit: BoxFit.cover),
      title: Text(
        bigText,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
      ),
      subtitle: Text(smallText, style: TextStyle(fontSize: 15)),
    );
  }
}
