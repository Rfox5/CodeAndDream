import 'package:animaciones/Widgets/style/padding.dart';
import 'package:flutter/material.dart';

import '../Animations/animation_builder.dart';
import '../Animations/animations.dart';

class ImageWAnimation extends StatefulWidget {
  const ImageWAnimation({super.key});

  @override
  State<ImageWAnimation> createState() => _ImageWAnimationState();
}

class _ImageWAnimationState extends State<ImageWAnimation>
    with TickerProviderStateMixin {
  late AnimationBuilder _animationBuilder;

  @override
  void initState() {
    super.initState();
    _animationBuilder = AnimationBuilder(
      animation: flipHorizontalAnimation,
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
          child: Container(
              width: 250,
              color: Theme.of(context).canvasColor,
              child: Image.asset("assets/mugiwara.png")),
        ),
      ),
    );
  }
}
