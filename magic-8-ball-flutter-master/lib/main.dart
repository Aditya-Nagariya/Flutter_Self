import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text('Ask Me Anything'),
            ),
            body: Magic8Ball(),
          ),
        ),
      ),
    );

class Magic8Ball extends StatefulWidget {
  Magic8Ball({Key key}) : super(key: key);

  @override
  State<Magic8Ball> createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int number = Random().nextInt(6) + 1;

  void changeBall() {
    setState(() {
      number = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.lightBlueAccent,
            child: TextButton(
              child: Image.asset('images/ball$number.png'),
              onPressed: () {
                changeBall();
              },
            ),
          ),
        ),
      ],
    );
  }
}
//Image.asset('images/ball$number.png'),
