import 'package:flutter/material.dart';

// It is a good idea to keep the spacing between different elements of your interface consistent.
// Since many elements will share the same attributes, it's better to create a class and reuse it.
// This way, you centralize the information and only need to change one attribute to update the entire app.

class TextPadding extends StatelessWidget {
  final Widget child;

  const TextPadding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      child: child,
    );
  }
}

class PrimaryPadding extends StatelessWidget {
  final Widget child;

  const PrimaryPadding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 15,
      ),
      child: child,
    );
  }
}

class ButtonPadding extends StatelessWidget {
  final Widget child;

  const ButtonPadding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      child: child,
    );
  }
}
