import 'package:bmi_wizard/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xff0a0e21),
        appBarTheme: const AppBarTheme(
          color: Color(0xff0a0e21),
        ),
        scaffoldBackgroundColor: const Color(0xff0a0e21),
      ),
      home: const InputPage(),
    );
  }
}
