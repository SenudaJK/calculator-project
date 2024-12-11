// IM-2021-014

import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  // Controller to manage the text in the TextField
  final compController = TextEditingController();
  // List to store the history of calculations
  final List<String> _history = [];

  // Getter to access the history
  List<String> get history => _history;

  // Method to set the value in the TextField based on the button pressed
  setValue(String value) {
    String str = compController.text;
    switch(value) {
      case "C":
        // Clear the TextField
        compController.clear();
        break;
      case "AC":
        // Remove the last character from the TextField
        compController.text = str.substring(0, str.length - 1);
        break;
      case "X":
        // Append multiplication symbol
        compController.text = str + "*";
        break;
      case "/":
        // Append division symbol
        compController.text = str + "/";
        break;
      case "-":
        // Append subtraction symbol
        compController.text = str + "-";
        break;
      case "=":
        // Compute the result
        compute();
        break;
      case "%":
        // Calculate percentage
        compController.text = (double.parse(str) / 100).toString();
        break;
      default:
        // Append the pressed button value to the TextField
        compController.text = str + value;
    }
    // Move the cursor to the end of the TextField
    compController.selection = TextSelection.fromPosition(
      TextPosition(offset: compController.text.length)
    ); 
  }

  // Method to compute the result of the expression in the TextField
  compute() {
    String text = compController.text;
    String result = text.interpret().toString();
    // Add the expression and result to the history
    _history.add('$text = $result');
    // Update the TextField with the result
    compController.text = result;
    // Notify listeners to update the UI
    notifyListeners();
  }

  @override
  void dispose() {
    // Dispose the TextEditingController
    compController.dispose();
    super.dispose();
  }
}