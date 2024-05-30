import 'package:flutter/material.dart';
import 'package:portfolio/core/extensions/seperator.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_images.dart';
import 'package:portfolio/features/home/presentation/views/widgets/nav_bar_icon.dart';

class VerticalNavigationBar extends StatelessWidget {
  const VerticalNavigationBar({super.key});
  static const List<String> icons = [
    Assets.iconsIdCard,
    Assets.iconsProject,
    Assets.iconsCertificate,
    Assets.iconsAchievements,
    Assets.iconsEnvople,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColors.kcThird,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            icons.length,
            (index) {
              return NavBarIcon(
                imagePath: icons[index],
                index: index,
              );
            },
          )
              .seperator(
                const SizedBox(
                  height: 8,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
