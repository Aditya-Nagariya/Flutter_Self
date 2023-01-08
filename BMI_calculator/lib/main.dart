import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/screen/variables.dart';
import 'calculatorBrain.dart';
import 'components/inputPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatefulWidget {
  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  CalculatorBrain cb = new CalculatorBrain(height.toDouble(), age.toDouble());

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      home: InputPage(),
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(
        primaryColor: Color(0xFF0a0c21),
        scaffoldBackgroundColor: Color(0xFF0a0c21),
        textTheme:
            TextTheme(bodyText2: TextStyle(color: CupertinoColors.white)),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
      ),
    );
  }
}
