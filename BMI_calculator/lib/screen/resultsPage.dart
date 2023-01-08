import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/bottomButton.dart';
import 'ReusableCard.dart';
import 'constants.dart';

class ResultPage extends StatefulWidget {
  late final String bmiResult;
  late final String resultText;
  late final String interpretation;

  ResultPage({
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  });
  @override
  State<ResultPage> createState() => ResultPageState(
      bmiResult: bmiResult,
      resultText: resultText,
      interpretation: interpretation);
}

class ResultPageState extends State<ResultPage> {
  late String? bmiResult;
  late String? resultText;
  late String? interpretation;

  ResultPageState({this.bmiResult, this.resultText, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF090a1c),
        title: Text(
          "BMI CALCULATOR",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomCenter,
              child: Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toString(), style: kResultTextStyle),
                  Text(
                    bmiResult.toString(),
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation.toString(),
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
              onPress: () {},
            ),
          ),
          BottomButton(
            buttonTitle: "RE-CALCULATE",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
