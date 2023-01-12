import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ReusableContainer extends StatelessWidget {
  ReusableContainer(this.mColor, {this.mChild, this.onPress});
  final Color mColor;
  final Widget mChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: mChild,
        decoration: BoxDecoration(
          color: mColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}