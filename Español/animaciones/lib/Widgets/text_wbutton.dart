import 'package:flutter/material.dart';

import '../Animations/animation_builder.dart';
import '../Animations/animations.dart';
import '../Widgets/style/padding.dart';
import '../Widgets/style/text.dart';

class TextWButton extends StatefulWidget {
  const TextWButton({super.key});

  @override
  State<TextWButton> createState() => _TextWButtonState();
}

class _TextWButtonState extends State<TextWButton>
    with TickerProviderStateMixin {
  late AnimationBuilder _animationBuilder;

  @override
  void initState() {
    super.initState();
    _animationBuilder = AnimationBuilder(
      animation: slideOutAnimation,
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PrimaryPadding(
          child: AnimatedBuilder(
            animation: _animationBuilder.controller,
            builder: (context, child) {
              return _animationBuilder.buildAnimation(child!);
            },
            child: TextWidget(
                texto: "Con Boton", color: Theme.of(context).primaryColorDark),
          ),
        ),
        ButtonPadding(
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _animationBuilder.startAnimation(() {
                    // Redibuja el widget cuando la animación termina
                    setState(() {});
                  });
                });
              },
              child: const Text("Action")),
        )
      ],
    );
  }
}
