import 'package:flutter/material.dart';

class NavigationTextButton extends StatelessWidget {
  const NavigationTextButton({
    super.key,
    required this.onTap,
    required this.text,
  });
  final void Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
