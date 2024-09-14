import 'package:flutter/material.dart';

import '../Widgets/components/text_box.dart';
import '../Widgets/components/text_wbutton.dart';
import '../Widgets/components/card_wanimation.dart';
import '../Widgets/components/image_wanimation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // SafeArea ensures that the top of the screen, where the time and battery are located, remains clear.
    return const SafeArea(
        child: Scaffold(
      // This widget allows the content to scroll if it takes up more space than available.
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // Here, I organize the content of the column to distribute its elements with spacing between the widgets.
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextBox(),
              // This creates a horizontal line that separates the widgets.
              Divider(),
              TextWButton(),
              Divider(),
              CardWAnimation(),
              Divider(),
              ImageWAnimation(),
            ],
          ),
        ),
      ),
    ));
  }
}
