import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'quiz_brain.dart';

void main() => runApp(Quizzler());

QuizeBrain quizeBrain = new QuizeBrain();

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("The Quizzler"),
          backgroundColor: CupertinoColors.systemTeal,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scorekeeper = [];

  void checkAnswere(bool userPickedAnswere) {
    bool correctAnswere = quizeBrain.getQuestionAnswer();
    setState(() {
      if (quizeBrain.isFinished() == true) {
        Alert(
                context: context,
                title: "You Successfully Completed Quiz",
                desc: "")
            .show();
        quizeBrain.resetQuestion();
        scorekeeper = [];
      } else {
        if (userPickedAnswere == correctAnswere) {
          scorekeeper.add(Icon(
            Icons.check,
            color: CupertinoColors.activeGreen,
          ));
        } else {
          scorekeeper.add(Icon(
            Icons.close,
            color: CupertinoColors.destructiveRed,
          ));
        }
        quizeBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      quizeBrain.getQuestionText(),
                      style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ],
            )),
        Expanded(
            child: Center(
          child: Container(
            color: CupertinoColors.activeGreen,
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                checkAnswere(true);
              },
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "True",
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
        )),
        Expanded(
            child: Center(
          child: Container(
            color: CupertinoColors.destructiveRed,
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                checkAnswere(false);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "False",
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
        )),
        Expanded(
          child: Row(
            children: scorekeeper,
          ),
        ),
      ],
    );
  }

  dynamic randomQuestionGenerator(questions) {
    return questions[Random().nextInt(2)];
  }
}
