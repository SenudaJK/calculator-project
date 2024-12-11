import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator_app/Provider/cal_provider.dart';
import 'package:calculator_app/Constants/colors.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // Handling the button tap event
      onTap: () => Provider.of<CalculatorProvider>(context, listen: false)
          .setValue("="),
      child: Container(
        // Setting the height and width of the button
        height: 170,
        width: 70,
        // Styling the button with a background color and rounded corners
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(40),
        ),
        // Centering the text inside the button
        child: const Center(
          child: Text(
            "=",
            style: TextStyle(fontSize: 32),
          ),
        ),
      ),
    );
  }
}