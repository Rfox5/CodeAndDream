import 'package:flutter/material.dart';
import '../Widgets/image_wanimation.dart';
import '../Widgets/text_box.dart';
import '../Widgets/card_wanimation.dart';
import '../Widgets/text_wbutton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextBox(),
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
