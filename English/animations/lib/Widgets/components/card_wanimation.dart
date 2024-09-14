import 'package:flutter/material.dart';

import '../../Widgets/style/padding.dart';
import '../../Animations/animation_builder.dart';
import '../../Animations/animations.dart';

class CardWAnimation extends StatefulWidget {
  const CardWAnimation({super.key});

  @override
  State<CardWAnimation> createState() => _CardWAnimationState();
}

// To enable the class to run animations, it must include TickerProviderStateMixin.
class _CardWAnimationState extends State<CardWAnimation>
    with TickerProviderStateMixin {
  late AnimationBuilder _animationBuilder;

  @override
  void initState() {
    super.initState();
    // Here we initialize the animation; you can change the duration of the animation.
    _animationBuilder = AnimationBuilder(
      animation: rotateAndScaleAnimation,
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryPadding(
      // You need to wrap the widget that will display the animation in an AnimatedBuilder.
      child: AnimatedBuilder(
        // Assign the animation controller.
        animation: _animationBuilder.controller,
        // Send the widget to the controller.
        builder: (context, child) {
          return _animationBuilder.buildAnimation(child!);
        },
        // This is the widget we want to animate.
        child: Card(
          child: ListTile(
            // This is the icon on the left side of the card.
            leading: const Icon(Icons.precision_manufacturing_sharp),
            // This is the top value of the card.
            title: const Text("Name"),
            // This is the bottom value of the card.
            subtitle: const Text("Company"),
            // This is the icon on the right side that performs an action when pressed.
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  _animationBuilder.startAnimation(() {
                    // Redraws the widget when the animation ends. Here you could place the action you want to be executed when the animation ends.
                    // For example, you might navigate to another screen or increment a counter on the screen.
                    setState(() {});
                  });
                });
              },
              icon: Icon(
                Icons.auto_fix_normal_outlined,
                // Here I specify that this widget uses a specific color from the theme we created in main.
                color: Theme.of(context).primaryColorDark,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
