import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/size_config.dart';

extension ResponsiveFontSizeExt on int {
  double toResponsiveFontSize(BuildContext context) {
    double getScaleFactor(BuildContext context) {
      double width = MediaQuery.sizeOf(context).width;
      if (width < SizeConfig.tablet) {
        return width / SizeConfig.tablet - 200;
      } else if (width < SizeConfig.desktop) {
        return width / SizeConfig.desktop - 200;
      } else {
        return 1920;
      }
    }

    int fontSize = this;
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;
    double lowerLimit = fontSize * 0.8;
    double upperLimit = fontSize * 1.2;
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }
}
