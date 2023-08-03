// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bottom_button.dart';
import 'calculator_brain.dart';
import 'icon_content.dart';
import 'main.dart';
import 'result_calculate_screen.dart';
import 'reusable_card.dart';
import 'round_icon_button.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderEnum? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 21;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = GenderEnum.male;
                        });
                      },
                      clr: selectedGender == GenderEnum.male
                          ? kActiveColor
                          : kInactiveColor,
                      cardChild: IconContent(
                        newIcon: FontAwesomeIcons.mars,
                        newText: 'MALE',
                      )),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderEnum.female;
                      });
                    },
                    clr: selectedGender == GenderEnum.female
                        ? kActiveColor
                        : kInactiveColor,
                    cardChild: IconContent(
                      newIcon: FontAwesomeIcons.venus,
                      newText: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              clr: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kNewTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kBoldTextStyle,
                      ),
                      Text('cm', style: kNewTextStyle),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    onChanged: (newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                    min: 120,
                    max: 220,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    clr: kActiveColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kNewTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: kBoldTextStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              size: 25.0,
                              onPressed: () {
                                setState(() {
                                  weight > 2 ? weight-- : null;
                                });
                              },
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              size: 25.0,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    clr: kActiveColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kNewTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kBoldTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              size: 25,
                              onPressed: () {
                                setState(() {
                                  age > 2 ? age-- : null;
                                });
                              },
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              size: 25,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            text: 'CALCULATE',
            onPress: () {
              CalculatorBrain calculatorBrain =
                  CalculatorBrain(height: height, weight: weight);

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResultPage(
                  bmiValue: calculatorBrain.calculateBMI(),
                  result: calculatorBrain.getResult(),
                  interpretation: calculatorBrain.getInterpretation(),
                );
              }));
            },
          ),
        ],
      ),
    );
  }
}
