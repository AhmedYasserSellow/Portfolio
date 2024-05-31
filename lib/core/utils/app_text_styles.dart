import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';

abstract class AppTextStyles {
  // Text Styles start with [kts]
  static TextStyle ktsNormal =
      TextStyle(color: AppColors.kcThird, fontSize: 12);
  static TextStyle ktsHeader = TextStyle(
    color: AppColors.kcPrimary,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
  static TextStyle ktsMediumHeader = TextStyle(
    color: AppColors.kcThird,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static TextStyle ktsBigHeader = TextStyle(
    color: AppColors.kcPrimary,
    fontSize: 42,
    fontWeight: FontWeight.bold,
  );
}
