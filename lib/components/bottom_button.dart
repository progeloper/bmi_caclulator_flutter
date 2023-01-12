import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonLabel, this.mFunc});
  final String buttonLabel;
  final Function mFunc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: mFunc,
      child: Container(
        color: kActiveColor,
        height: 80.0,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        child: Center(
          child: Text(
            buttonLabel,
            style: kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}