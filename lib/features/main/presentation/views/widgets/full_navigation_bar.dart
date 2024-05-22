import 'package:flutter/material.dart';
import 'package:portfolio/features/main/presentation/views/widgets/custom_navigation_bar.dart';
import 'package:portfolio/features/main/presentation/views/widgets/drawer_opener.dart';

class FullNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  const FullNavigationBar({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      leading: const DrawerOpener(),
      title: FittedBox(
        child: CustomNavigationBar(
          controller: controller,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.copy(AppBar().preferredSize);
}
