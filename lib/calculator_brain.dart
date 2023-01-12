import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;
  String calculateBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi>=25) return 'OVERWEIGHT';
    else if(_bmi>18) return 'NORMAL';
    else return 'UNDERWEIGHT';
  }

  String getBody(){
    if(_bmi>=25) return 'Your BMI result is higher than it should be. Try a diet and exercise';
    else if(_bmi>18) return 'Your BMI result is within the average range of an adult.';
    else return 'Your BMI result is lower than it should be. See a doctor or nutritionist.';
  }
}