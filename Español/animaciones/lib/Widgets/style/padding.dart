import 'package:flutter/material.dart';

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
