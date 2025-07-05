/// A Flutter widget for a customizable smooth circular page indicator.
/// Provides a reusable progress indicator for onboarding,
/// quizzes, or any step-based UI.

// ignore_for_file: dangling_library_doc_comments

import 'package:flutter/material.dart';

/// A customizable circular progress indicator with a smooth animation and a centered icon/button.
///
/// [SmoothCircularPageIndicator] is reusable and can be used in onboarding flows,
/// quizzes, or any step-based UI. It supports custom icons, colors, sizes, and tap callbacks.
class SmoothCircularPageIndicator extends StatefulWidget {
  /// The current step or page (zero-based).
  final int currentStep;

  /// The total number of steps/pages.
  final int totalSteps;

  /// The color of the progress arc.
  final Color progressColor;

  /// The color of the background arc.
  final Color backgroundColor;

  /// The icon to display in the center.
  final IconData icon;

  /// The color of the center icon.
  final Color iconColor;

  /// The size of the entire widget.
  final double size;

  /// The width of the progress stroke.
  final double strokeWidth;

  /// The duration of the progress animation.
  final Duration animationDuration;

  /// Callback when the widget is tapped.
  final VoidCallback? onTap;

  /// Optional semantic label for accessibility.
  final String? semanticLabel;

  /// Creates a [SmoothCircularPageIndicator] widget.
  const SmoothCircularPageIndicator({
    super.key,
    required this.currentStep,
    required this.totalSteps,
    this.progressColor = Colors.blue,
    this.backgroundColor = Colors.grey,
    this.icon = Icons.arrow_forward_ios_rounded,
    this.iconColor = Colors.white,
    this.size = 80.0,
    this.strokeWidth = 5.0,
    this.animationDuration = const Duration(milliseconds: 500),
    this.onTap,
    this.semanticLabel,
  }) : assert(totalSteps > 0, 'totalSteps must be greater than zero');

  @override
  State<SmoothCircularPageIndicator> createState() =>
      _SmoothCircularPageIndicatorState();
}

class _SmoothCircularPageIndicatorState
    extends State<SmoothCircularPageIndicator> {
  @override
  Widget build(BuildContext context) {
    final double progress =
        (widget.currentStep.clamp(0, widget.totalSteps) + 1) /
        widget.totalSteps;

    return Semantics(
      label: widget.semanticLabel,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Stack(
          alignment: Alignment.center,
          children: [
            TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0.0, end: progress),
              duration: widget.animationDuration,
              curve: Curves.easeInOut,
              builder: (context, value, child) {
                return SizedBox(
                  width: widget.size,
                  height: widget.size,
                  child: CircularProgressIndicator(
                    value: value,
                    color: widget.progressColor,
                    backgroundColor: widget.backgroundColor,
                    strokeWidth: widget.strokeWidth,
                  ),
                );
              },
            ),
            Icon(widget.icon, color: widget.iconColor, size: widget.size * 0.5),
          ],
        ),
      ),
    );
  }
}
