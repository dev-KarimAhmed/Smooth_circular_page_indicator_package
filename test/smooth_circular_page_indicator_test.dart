import 'package:flutter_test/flutter_test.dart';

import 'package:smooth_circular_page_indicator/smooth_circular_page_indicator.dart';

void main() {
  test('adds one to input values', () {
    final indicator = SmoothCircularPageIndicator(
      currentStep: 1,
      totalSteps: 3,
    );

    expect(indicator.currentStep, 1);
    expect(indicator.totalSteps, 3);
  });
}
