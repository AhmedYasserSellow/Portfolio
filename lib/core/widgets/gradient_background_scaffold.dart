import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';

class GradientBackgroundScaffold extends StatelessWidget {
  const GradientBackgroundScaffold({
    super.key,
    this.body,
    this.appBar,
    this.bottomNavigationBar,
    this.drawer,
  });
  final Widget? body, drawer, bottomNavigationBar;
  final PreferredSizeWidget? appBar;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          AppColors.galaxyColor1,
          AppColors.galaxyColor2,
          AppColors.galaxyColor3,
        ],
      )),
      child: Scaffold(
        body: body,
        appBar: appBar,
        drawer: drawer,
        bottomNavigationBar: bottomNavigationBar,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
