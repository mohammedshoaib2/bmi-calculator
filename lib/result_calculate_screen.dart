// ignore_for_file: public_member_api_docs, sort_constructors_first, use_key_in_widget_constructors
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

import 'bottom_button.dart';
import 'reusable_card.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    required this.bmiValue,
    required this.result,
    required this.interpretation,
  });

  final double bmiValue;
  final String result;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              clr: kActiveColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    result.toUpperCase(),
                    style: TextStyle(
                      color: Color(0xFF24D876),
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmiValue.toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 21.0),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'RE-CALCULATE',
            onPress: (() {
              Navigator.pop(context);
            }),
          )
        ],
      ),
    );
  }
}
