import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:portfolio/core/utils/app_colors.dart';

class DrawerOpener extends StatelessWidget {
  const DrawerOpener({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
      icon: Icon(
        FontAwesomeIcons.bars,
        color: AppColors.kcPrimary,
      ),
    );
  }
}
