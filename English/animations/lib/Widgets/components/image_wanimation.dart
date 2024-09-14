import 'package:flutter/material.dart';

import '../../Widgets/style/padding.dart';
import '../../Animations/animation_builder.dart';
import '../../Animations/animations.dart';

class ImageWAnimation extends StatefulWidget {
  const ImageWAnimation({super.key});

  @override
  State<ImageWAnimation> createState() => _ImageWAnimationState();
}

// To enable the class to run animations, it must include TickerProviderStateMixin.
class _ImageWAnimationState extends State<ImageWAnimation>
    with TickerProviderStateMixin {
  late AnimationBuilder _animationBuilder;

  @override
  void initState() {
    super.initState();
    // Here we initialize the animation. You can change the duration of the animation.
    _animationBuilder = AnimationBuilder(
      animation: flipHorizontalAnimation,
      vsync: this,
      duration: const Duration(seconds: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryPadding(
      // This widget allows creating an action when the user taps on the widget.
      child: GestureDetector(
        // Here I specify that the action is triggered when the widget is double-tapped.
        onDoubleTap: () {
          setState(() {
            _animationBuilder.startAnimation(() {
              // Redraws the widget when the animation ends. Here you could place the action you want to be executed when the animation ends.
              // For example, you might navigate to another screen or increment a counter on the screen.
              setState(() {});
            });
          });
        },
        // You need to wrap the widget that will display the animation in an AnimatedBuilder.
        child: AnimatedBuilder(
          // Assign the animation controller.
          animation: _animationBuilder.controller,
          // Send the widget to the controller.
          builder: (context, child) {
            return _animationBuilder.buildAnimation(child!);
          },
          // This is the widget we want to animate.
          child: Container(
              width: 250,
              // Here I specify that this widget uses a specific color from the theme we created in main.
              color: Theme.of(context).canvasColor,
              child: Image.asset("assets/mugiwara.png")),
        ),
      ),
    );
  }
}
