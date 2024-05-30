import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';

abstract class AppTextStyles {
  // Text Styles start with [kts]
  static TextStyle ktsNormal =
      const TextStyle(color: Colors.grey, fontSize: 12);
  static TextStyle ktsHeader = const TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
  static TextStyle ktsMediumHeader = TextStyle(
    color: Colors.white.withOpacity(0.8),
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static TextStyle ktsBigHeader = TextStyle(
    color: AppColors.kcPrimary,
    fontSize: 42,
    fontWeight: FontWeight.bold,
  );
}
