import 'package:flutter/cupertino.dart';

import '../screen/constants.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonTitle;

  BottomButton({required this.onTap, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: Text(
            buttonTitle,
            style: kLargeButtonStyle,
          ),
        ),
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.only(top: 5),
        height: kBottomContainerHeight,
        color: Color(0xFFEB1555),
      ),
    );
  }
}
