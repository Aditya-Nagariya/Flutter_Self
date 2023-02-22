import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kTextFieldInputDecoration = InputDecoration(
    filled: true,
    fillColor: CupertinoColors.extraLightBackgroundGray,
    icon: Icon(
      Icons.location_city,
      color: CupertinoColors.extraLightBackgroundGray,
    ),
    hintText: "Enter City Name",
    hintStyle: TextStyle(color: CupertinoColors.inactiveGray),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(24),
          ),
    borderSide: BorderSide. none,
  ),
);