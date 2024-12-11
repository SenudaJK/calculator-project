// IM-2021-014

import 'package:calculator_app/Constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.controller,
  });

  // Controller to manage the text in the TextField
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 30),
      child: TextField(
        // Assigning the controller to the TextField
        controller: controller,
        decoration: const InputDecoration(
            // Removing the border of the TextField
            border: InputBorder.none,
            // Setting the background color of the TextField
            fillColor: AppColors.primaryColor,
            filled: true),
        // Setting the text style
        style: const TextStyle(fontSize: 50),
        // Making the TextField read-only
        readOnly: true,
        // Automatically focusing the TextField
        autofocus: true,
        // Showing the cursor in the TextField
        showCursor: true,
      ),
    );
  }
}