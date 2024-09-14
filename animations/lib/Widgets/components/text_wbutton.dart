import 'package:flutter/material.dart';

import '../style/padding.dart';
import '../style/text.dart';
import '../../Animations/animation_builder.dart';
import '../../Animations/animations.dart';

class TextWButton extends StatefulWidget {
  const TextWButton({super.key});

  @override
  State<TextWButton> createState() => _TextWButtonState();
}

// To enable the class to run animations, it must include TickerProviderStateMixin.
class _TextWButtonState extends State<TextWButton>
    with TickerProviderStateMixin {
  late AnimationBuilder _animationBuilder;

  @override
  void initState() {
    super.initState();
    // Here we initialize the animation. You can change the duration of the animation.
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
          // You need to wrap the widget that will display the animation in an AnimatedBuilder.
          child: AnimatedBuilder(
            // Assign the animation controller.
            animation: _animationBuilder.controller,
            // Send the widget to the controller.
            builder: (context, child) {
              return _animationBuilder.buildAnimation(child!);
            },
            // This is the widget we want to animate.
            child: TextWidget(
              texto: "With Button",
              // Here I specify that this widget uses a specific color from the theme we created in main.
              color: Theme.of(context).primaryColorDark,
            ),
          ),
        ),
        ButtonPadding(
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _animationBuilder.startAnimation(() {
                    // Redraws the widget when the animation ends. Here you could place the action you want to be executed when the animation ends.
                    // For example, you might navigate to another screen or increment a counter on the screen.
                    setState(() {});
                  });
                });
              },
              child: const Text("Animate")),
        )
      ],
    );
  }
}
