// ignore_for_file: public_member_api_docs, sort_constructors_first, no_leading_underscores_for_local_identifiers
class CalculatorBrain {
  CalculatorBrain({
    required this.height,
    required this.weight,
  });
  final int height;
  final int weight;
  double _bmi = 0;

  double calculateBMI() {
    _bmi = ((weight / height / height) * 10000);
    return _bmi;
  }

  String getResult() {
    if (_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    }

    return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi >= 25.0) {
      return 'You have higher than normal body weight, Try to excercise more';
    } else if (_bmi >= 18.5) {
      return 'You have normal body weight, Good Job';
    }

    return 'You have lower than normal body weight, You can eat a bit more';
  }
}
