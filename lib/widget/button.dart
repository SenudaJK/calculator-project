// IM-2021-014

import 'package:calculator_app/Constants/colors.dart';
import 'package:calculator_app/Provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Button1 extends StatelessWidget {
  const Button1(
      {super.key, required this.label, this.textColor = Colors.white});

  // Label to display on the button
  final String label;
  // Color of the text on the button
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // Handling the button tap event
      onTap: () => Provider.of<CalculatorProvider>(context, listen: false)
          .setValue(label),
      child: Material(
        // Adding elevation to the button
        elevation: 3,
        // Setting the background color of the button
        color: AppColors.secondaryColor2,
        // Making the button circular with rounded corners
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          // Setting the radius of the button
          radius: 36,
          // Setting the background color of the button
          backgroundColor: AppColors.secondaryColor2,
          child: Text(
            label,
            style: TextStyle(color: textColor, fontSize: 24),
          ),
        ),
      ),
    );
  }
}