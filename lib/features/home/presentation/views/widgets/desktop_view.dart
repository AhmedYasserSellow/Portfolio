import 'package:flutter/material.dart';
import 'package:portfolio/core/extensions/seperator.dart';
import 'package:portfolio/core/widgets/gradient_background_scaffold.dart';
import 'package:portfolio/features/drawer/presentation/views/drawer.dart';
import 'package:portfolio/features/home/presentation/views/widgets/drawer_opener.dart';
import 'package:portfolio/features/home/presentation/views/widgets/follow_me.dart';
import 'package:portfolio/features/home/presentation/views/widgets/vertical_nav_bar.dart';
import 'package:portfolio/features/home/presentation/views/widgets/pages_view.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({
    super.key,
    required this.controller,
  });
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return GradientBackgroundScaffold(
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Row(
          children: [
            const DrawerOpener(),
            const FollowMe(),
            const Expanded(
              child: PagesView(),
            ),
            const VerticalNavigationBar(),
          ]
              .seperator(
                const SizedBox(
                  width: 8,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
