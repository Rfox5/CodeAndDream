import 'package:flutter/material.dart';

import '../../Widgets/style/padding.dart';

// When your app uses the same widget multiple times, it's a good idea to create a class and reuse it.
// This way, you centralize and standardize this information.
// You can customize as needed how many attributes are necessary to configure the widget.
// In this case, I customize the widget that wraps the Text by color.
class TextWidget extends StatelessWidget {
  final String texto;
  final Color? color;
  const TextWidget({
    super.key,
    required this.texto,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: TextPadding(
        child: Text(
          texto,
          style: TextStyle(
            fontSize: 24,
            color: Theme.of(context).secondaryHeaderColor,
          ),
        ),
      ),
    );
  }
}
