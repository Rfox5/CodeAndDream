import 'package:flutter/material.dart';

class AnimationBuilder {
  final AnimationController controller;
  final Widget Function(Widget, AnimationController) animation;
  AnimationBuilder(
      {required this.animation,
      required TickerProvider vsync,
      required Duration duration})
      : controller = AnimationController(vsync: vsync, duration: duration);

  // Método para iniciar la animación
  void startAnimation(VoidCallback onCompleted) {
    controller.forward().then((_) {
      onCompleted();
      controller.reset(); // Restablece la animación
    });
  }

  // Método para crear la animación
  Widget buildAnimation(Widget child) {
    return animation(child, controller);
  }
}
