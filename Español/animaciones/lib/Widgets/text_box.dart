import 'package:flutter/material.dart';

import '../Animations/animation_builder.dart';
import '../Animations/animations.dart';
import '../Widgets/style/text.dart';
import '../Widgets/style/padding.dart';

class TextBox extends StatefulWidget {
  const TextBox({super.key});

  @override
  State<TextBox> createState() => _TextBoxState();
}

class _TextBoxState extends State<TextBox> with TickerProviderStateMixin {
  late AnimationBuilder _animationBuilder;

  @override
  void initState() {
    super.initState();
    _animationBuilder = AnimationBuilder(
      animation: scaleAnimation,
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryPadding(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _animationBuilder.startAnimation(() {
              // Redibuja el widget cuando la animación termina
              setState(() {});
            });
          });
        },
        child: AnimatedBuilder(
          animation: _animationBuilder.controller,
          builder: (context, child) {
            return _animationBuilder.buildAnimation(child!);
          },
          child: TextWidget(
            texto: 'Sin Boton',
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
