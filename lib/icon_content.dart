import 'package:flutter/material.dart';
import 'package:bmi_wizard/constants.dart';

class IconContent extends StatelessWidget {
  const IconContent(this.icon, this.label, {super.key});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
