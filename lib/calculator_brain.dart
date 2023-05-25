import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight)
      : _bmi = weight / pow(height / 100, 2);

  final int height;
  final int weight;

  final double _bmi;

  String calcBmi() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'ከመጠን በላይ ክብደት';
    } else if (_bmi > 18.5) {
      return 'የተለመደ';
    } else {
      return 'ዝቅተኛ ክብደት';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'ከተለመደው የሰውነት ክብደት ከፍ ያለ ስለሆን እባክዎን ተጨማሪ የአካል ብቃት እንቅስቃሴ ለማድረግ ይሞክሩ';
    } else if (_bmi > 18.5) {
      return 'መደበኛ የሰውነት ክብደት አሎት';
    } else {
      return 'ከተለመደው የሰውነት ክብደት ያነሰ ነው';
    }
  }
}
