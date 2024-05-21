import 'package:flutter/material.dart';

abstract class SizeConfig {
  static const double tablet = 768;
  static const double desktop = 1200;
  static late double width, height;

  static init(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}
