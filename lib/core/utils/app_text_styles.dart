import 'package:flutter/material.dart';

abstract class AppTextStyles {
  // Text Styles start with [kts]
  static TextStyle ktsNormal(BuildContext context) =>
      const TextStyle(color: Colors.grey, fontSize: 12);
  static TextStyle ktsHeader(BuildContext context) => const TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      );

  static TextStyle ktsBigHeader(BuildContext context) => const TextStyle(
        color: Colors.white,
        fontSize: 36,
      );
}
