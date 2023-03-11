import 'dart:math';

class CalculatorBrain {
  final int? height, weight;
  double? _bmi;

  CalculatorBrain({required this.height, required this.weight});

  String? calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi?.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'OverWeight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'You have a higher than a normal Body Weight';
    } else if (_bmi! >= 18.5) {
      return 'You have a Normal Body Weight. Good Job! Carry on..';
    } else {
      return 'You have a lower than normal Body Weight';
    }
  }
}
