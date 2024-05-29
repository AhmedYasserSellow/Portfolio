import 'package:flutter/material.dart';

class NavigationTextButton extends StatelessWidget {
  const NavigationTextButton({
    super.key,
    required this.text,
    required this.controller,
    required this.index,
  });

  final String text;
  final PageController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        controller.animateToPage(
          index,
          duration: const Duration(
            milliseconds: 500,
          ),
          curve: Curves.easeIn,
        );
      },
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
