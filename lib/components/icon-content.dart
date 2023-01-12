import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';




class IconContent extends StatelessWidget {
  IconContent(this.mIcon, this.gender);
  final IconData mIcon;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          mIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          '$gender',
          style: kCardTextStyle,
        )
      ],
    );
  }
}
