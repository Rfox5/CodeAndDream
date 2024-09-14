import 'package:animaciones/Widgets/style/padding.dart';
import 'package:flutter/material.dart';

import '../Animations/animation_builder.dart';
import '../Animations/animations.dart';

class CardWAnimation extends StatefulWidget {
  const CardWAnimation({super.key});

  @override
  State<CardWAnimation> createState() => _CardWAnimationState();
}

class _CardWAnimationState extends State<CardWAnimation>
    with TickerProviderStateMixin {
  late AnimationBuilder _animationBuilder;

  @override
  void initState() {
    super.initState();
    _animationBuilder = AnimationBuilder(
      animation: rotateAndScaleAnimation,
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryPadding(
      child: AnimatedBuilder(
        animation: _animationBuilder.controller,
        builder: (context, child) {
          return _animationBuilder.buildAnimation(child!);
        },
        child: Card(
          child: ListTile(
            leading: const Icon(Icons.precision_manufacturing_sharp),
            title: const Text("Nombre"),
            subtitle: const Text("Empresa"),
            trailing: IconButton(
                onPressed: () {
                  setState(() {
                    _animationBuilder.startAnimation(() {
                      // Redibuja el widget cuando la animación termina
                      setState(() {});
                    });
                  });
                },
                icon: const Icon(Icons.auto_fix_normal_outlined)),
          ),
        ),
      ),
    );
  }
}
