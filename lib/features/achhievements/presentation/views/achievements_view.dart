import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';

class AchievementsView extends StatelessWidget {
  const AchievementsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Achievements',
          style: AppTextStyles.ktsBigHeader,
        ),
        const SizedBox(
          height: 8,
        ),
        Expanded(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'No Achievements Until Now',
                  style: AppTextStyles.ktsHeader,
                ),
                Text(
                  'but it will not last for long',
                  style: AppTextStyles.ktsNormal,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
