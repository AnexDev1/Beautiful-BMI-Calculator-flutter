import 'package:bmi_wizard/constants.dart';
import 'package:bmi_wizard/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kInactiveCardColor,
              cardChild: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'OVERWEIGHT',
                    style: TextStyle(
                        color: Color(0xff24d876),
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '26.8',
                    style:
                        TextStyle(fontSize: 100.0, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'You have a higher body mass, try to exercises more',
                    style: TextStyle(fontSize: 22.0),
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          Expanded(
            child: BottomButton(() {
              Navigator.pop(context);
            }, 'RECALCULATE'),
          ),
        ],
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  const BottomButton(this.onTap, this.buttonTitle, {super.key});
  final VoidCallback? onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        padding: const EdgeInsets.only(bottom: 10.0),
        color: kBottomContainerColor,
        height: 80.0,
        child: Center(
          child: Text(
            buttonTitle,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
