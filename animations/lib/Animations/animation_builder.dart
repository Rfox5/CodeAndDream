import 'package:flutter/material.dart';

// This class will be reusable for any widget.
class AnimationBuilder {
  final AnimationController controller;
  // This parameter is the widget with the animation we want to implement.
  final Widget Function(Widget, AnimationController) animation;
  AnimationBuilder(
      {required this.animation,
      required TickerProvider vsync,
      required Duration duration})
      : controller = AnimationController(vsync: vsync, duration: duration);

  // Method to start the animation.
  void startAnimation(VoidCallback onCompleted) {
    controller.forward().then((_) {
      onCompleted();
      controller.reset(); // Resets the animation.
    });
  }

  // Method to build the animation.
  Widget buildAnimation(Widget child) {
    return animation(child, controller);
  }
}
