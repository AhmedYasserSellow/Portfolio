import 'package:flutter/material.dart';

abstract class AppTextStyles {
  // Text Styles start with [kts]
  static TextStyle ktsNormal =
      const TextStyle(color: Colors.grey, fontSize: 12);
  static TextStyle ktsHeader = const TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );

  static TextStyle ktsBigHeader = const TextStyle(
    color: Colors.white,
    fontSize: 42,
  );
}
