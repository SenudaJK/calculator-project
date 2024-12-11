import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator_app/Provider/cal_provider.dart';
import 'package:calculator_app/Constants/colors.dart';
import 'package:calculator_app/widget/textfield.dart';
import 'package:calculator_app/widget/calButton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Getting the screen height
    final screenHeight = MediaQuery.sizeOf(context).height;
    // Calculating the reduced height for the layout
    final reducedHeight = screenHeight * 0.6;
    // Defining padding for the layout
    const padding = EdgeInsets.symmetric(horizontal: 25, vertical: 25);
    // Defining decoration for the container
    const decoration = BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)));
    
    // Using Consumer to listen to changes in CalculatorProvider
    return Consumer<CalculatorProvider>(
      builder: (context, provider, _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Text("Calculator App"),
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: [
              // Custom TextField to display the input and result
              CustomTextField(controller: provider.compController),
              // Add more widgets here
            ],
          ),
        );
      },
    );
  }
}