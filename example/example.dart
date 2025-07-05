import 'package:flutter/material.dart';
import 'package:smooth_circular_page_indicator/smooth_circular_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Smooth Circular Page Indicator Example'),
        ),
        body: Center(
          child: SmoothCircularPageIndicator(
            currentStep: 1,
            totalSteps: 5,
            progressColor: Colors.blue,
            backgroundColor: Colors.grey.shade300,
            icon: Icons.arrow_forward_ios_rounded,
            iconColor: Colors.white,
            size: 80.0,
            strokeWidth: 5.0,
            animationDuration: const Duration(milliseconds: 500),
            onTap: () {
              debugPrint('Indicator tapped!');
            },
            semanticLabel: 'Next step',
          ),
        ),
      ),
    );
  }
}
