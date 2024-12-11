// IM-2021-014

import 'package:calculator_app/Provider/cal_provider.dart';
import 'package:calculator_app/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  // Entry point of the application
  runApp(const CalculatorApp());
}

// Main application widget
class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Providing CalculatorProvider to the widget tree
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        // Setting the theme to dark
        theme: ThemeData.dark(),
        // Hiding the debug banner
        debugShowCheckedModeBanner: false,
        // Setting the home screen of the app
        home: const HomeScreen(),
      ),
    );
  }
}