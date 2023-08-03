// ignore_for_file: sort_child_properties_last, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({required this.icon, this.size, this.onPressed});

  final IconData? icon;
  final double? size;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(
        icon,
        size: size,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4E5E),
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      splashColor: Colors.transparent,
    );
  }
}
