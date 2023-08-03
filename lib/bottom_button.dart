// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.text, this.onPress});
  final String text;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: kPinkColor,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
