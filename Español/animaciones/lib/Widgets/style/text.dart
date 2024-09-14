import 'package:animaciones/Widgets/style/padding.dart';
import 'package:flutter/material.dart';

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
