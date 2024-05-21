import 'package:flutter/material.dart';
import 'package:portfolio/core/extensions/responsive_text.dart';

abstract class PortfolioTextStyles {
  // Text Styles start with [ktc]
  static TextStyle ktsNormal(BuildContext context) => TextStyle(
        color: Colors.grey,
        fontSize: 12.toResponsiveFontSize(context),
      );
  static TextStyle ktsHeader(BuildContext context) => TextStyle(
        color: Colors.white,
        fontSize: 12.toResponsiveFontSize(context),
        fontWeight: FontWeight.bold,
      );
}
