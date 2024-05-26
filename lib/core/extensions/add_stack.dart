import 'package:flutter/material.dart';

extension WidgetExt on Widget {
  Widget addStack({
    required double width,
    required double height,
  }) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 15),
          child: this,
        ),
      ],
    );
  }
}
