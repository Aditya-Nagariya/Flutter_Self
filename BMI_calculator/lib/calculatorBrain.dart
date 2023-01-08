class CalculatorBrain {
  double height;
  double weight;

  CalculatorBrain(this.height, this.weight);

  double? _bmi;

  String calculateBMI() {
    this._bmi = ((weight / (height * height)) * 10000);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    print(_bmi);
    if (_bmi! >= 25) {
      return 'OverWeight';
    } else if (_bmi! > 18.5 && _bmi! < 25) {
      print('Normal');
      return 'Normal';
    } else {
      print('UnderWeight');
      return 'UnderWeight';
    }
  }

  String getinterpretation() {
    if (_bmi! >= 25) {
      return 'You Have A Higher Than Normal Body weight . Try To Exercise More';
    } else if (_bmi! > 18.5 && _bmi! < 25) {
      return 'You Have A Normal  Body Weight . Good Job !';
    } else {
      return 'You Have A Lower Than Normal Body Weight . You Can Eat More';
    }
  }
}
