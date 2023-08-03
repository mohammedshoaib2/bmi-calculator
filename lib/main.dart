// ignore_for_file: public_member_api_docs, sort_constructors_first, use_key_in_widget_constructors,, prefer_const_literals_to_create_immutables, empty_constructor_bodies
// ignore_for_file: prefer_const_constructors, sort_child_properties_last, deprecated_member_use,

import 'package:flutter/material.dart';
import 'constants.dart';
import 'input_screen.dart';

void main() {
  runApp(BMICalculator());
}

double bmiAnswer = 0;

enum GenderEnum {
  male,
  female;
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
          thumbColor: kPinkColor,
          activeTrackColor: Colors.white,
          inactiveTrackColor: Color(
            0xFF8D8E98,
          ),
          overlayColor: Color(0x29EB1555),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: 30.0,
          ),
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 15.0,
          ),
        ),
        appBarTheme: AppBarTheme(color: kDarkColor),
        primaryColor: kDarkColor,
        scaffoldBackgroundColor: kDarkColor,
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
