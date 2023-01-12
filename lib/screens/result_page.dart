import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

import '../components/reusable-container.dart';


class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmi, @required this.resultTitle, @required this.resultBody});

  final String bmi;
  final String resultTitle;
  final String resultBody;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kHeaderTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableContainer(
              kInactiveContainerColour,
              onPress: () {},
              mChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultTitle,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmi,
                    style: kBmiTextStyle,
                  ),
                  Text(
                    resultBody,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonLabel: 'RE-CALCULATE',
            mFunc: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
