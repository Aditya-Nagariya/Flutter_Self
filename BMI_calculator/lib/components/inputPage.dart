import 'package:bmi_calculator/calculatorBrain.dart';
import 'package:bmi_calculator/screen/resultsPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screen/IconContent.dart';
import '../screen/ReusableCard.dart';
import '../screen/constants.dart';
import '../screen/roundIconButton.dart';
import '../screen/variables.dart';
import 'bottomButton.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF090a1c),
        title: Text('BMI CALCULATOR'),
      ),
      body: Container(
        color: Color(0xFF0a0c21),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ReusableCard(
                            onPress: () {
                              setState(() {
                                this.selectedGender = Gender.male;
                              });
                            },
                            cardChild: IconContent(
                                icon: FontAwesomeIcons.mars, label: "Male"),
                            colour: selectedGender == Gender.male
                                ? kActiveCardColour
                                : kInActiveCardColour,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ReusableCard(
                            onPress: () {
                              setState(() {
                                this.selectedGender = Gender.female;
                              });
                            },
                            cardChild: IconContent(
                              icon: FontAwesomeIcons.venus,
                              label: "Female",
                            ),
                            colour: selectedGender == Gender.female
                                ? kActiveCardColour
                                : kInActiveCardColour,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {},
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "HEiGHT",
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                height.toString(),
                                style: kTextStyle,
                              ),
                              Text(
                                "cm",
                                style: kLabelTextStyle,
                              ),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                thumbColor: Color(0xFFEB1555),
                                inactiveTrackColor: CupertinoColors.white,
                                activeTrackColor: Color(0xFFEB1555)),
                            child: Slider(
                              value: height.toDouble(),
                              min: kmin.toDouble(),
                              max: kmax.toDouble(),
                              onChanged: (double value) {
                                setState(() {
                                  height = value.round();
                                });
                              },
                            ),
                          )
                        ],
                      ),
                      colour: kActiveCardColour,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ReusableCard(
                            onPress: () {},
                            cardChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Weight",
                                  style: kLabelTextStyle,
                                ),
                                Text(
                                  weight.toString(),
                                  style: kTextStyle,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.minus,
                                      onPressed: () {
                                        setState(
                                          () {
                                            weight--;
                                          },
                                        );
                                      },
                                    ),
                                    SizedBox(width: 10),
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.plus,
                                      onPressed: () {
                                        setState(
                                          () {
                                            weight++;
                                          },
                                        );
                                      },
                                    )
                                  ],
                                )
                              ],
                            ),
                            colour: kActiveCardColour,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ReusableCard(
                            onPress: () {},
                            cardChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Age",
                                  style: kLabelTextStyle,
                                ),
                                Text(
                                  age.toString(),
                                  style: kTextStyle,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.minus,
                                      onPressed: () {
                                        setState(
                                          () {
                                            age--;
                                          },
                                        );
                                      },
                                    ),
                                    SizedBox(width: 10),
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.plus,
                                      onPressed: () {
                                        setState(
                                          () {
                                            age++;
                                          },
                                        );
                                      },
                                    )
                                  ],
                                ),
                              ],
                            ),
                            colour: kActiveCardColour,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              onTap: () {
                setState(() {
                  CalculatorBrain cb =
                      new CalculatorBrain(height.toDouble(), weight.toDouble());
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        bmiResult: cb.calculateBMI(),
                        resultText: cb.getResult(),
                        interpretation: cb.getinterpretation(),
                      ),
                    ),
                  );
                });
              },
              buttonTitle: 'CALCULATE',
            ),
          ],
        ),
      ),
    );
  }
}
