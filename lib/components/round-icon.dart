import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.mIcon, this.mOnPressed});
  final IconData mIcon;
  final Function mOnPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: mOnPressed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xFF4CF5E),
      elevation: 4.0,
      shape: CircleBorder(),
      child: Icon(
        mIcon, color: kDefaultTextColour,
      ),
    );
  }
}

