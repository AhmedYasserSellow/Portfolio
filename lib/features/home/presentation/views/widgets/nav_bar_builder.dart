import 'package:flutter/material.dart';
import 'package:portfolio/core/extensions/seperator.dart';
import 'package:portfolio/core/utils/app_images.dart';
import 'package:portfolio/features/home/presentation/views/widgets/nav_bar_icon.dart';

class NavBarBuilder extends StatelessWidget {
  const NavBarBuilder({
    super.key,
    required this.axis,
  });
  final Axis axis;

  static const List<String> icons = [
    Assets.iconsIdCard,
    Assets.iconsProject,
    Assets.iconsCertificate,
    // Assets.iconsAchievements,
    Assets.iconsEnvople,
  ];
  static final List<NavBarIcon> children = List.generate(
    icons.length,
    (index) {
      return NavBarIcon(
        imagePath: icons[index],
        index: index,
      );
    },
  );
  @override
  Widget build(BuildContext context) {
    if (axis == Axis.vertical) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: children
            .seperator(
              const SizedBox(
                height: 8,
              ),
            )
            .toList(),
      );
    } else {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: children
            .seperator(
              const SizedBox(
                width: 8,
              ),
            )
            .toList(),
      );
    }
  }
}
