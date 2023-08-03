// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'constants.dart';

class IconContent extends StatelessWidget {
  final IconData newIcon;
  final String newText;

  const IconContent({super.key, required this.newIcon, required this.newText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          newIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          newText,
          style: kNewTextStyle,
        ),
      ],
    );
  }
}
