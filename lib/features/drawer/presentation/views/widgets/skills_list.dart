import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_images.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/features/drawer/data/models/skill_model.dart';
import 'package:portfolio/features/drawer/presentation/views/widgets/skill_list_tile.dart';

class SkillsList extends StatelessWidget {
  const SkillsList({super.key});
  static const List<SkillModel> mySkills = [
    SkillModel(
      imagePath: Assets.imagesFlutter,
      title: 'Flutter',
      value: 70,
    ),
    SkillModel(
      imagePath: Assets.imagesDart,
      title: 'Dart',
      value: 90,
    ),
    SkillModel(
      imagePath: Assets.imagesFirebase,
      title: 'Firebase',
      value: 50,
    ),
    SkillModel(
      imagePath: Assets.imagesResponsive,
      title: 'Responsive Design',
      value: 75,
    ),
    SkillModel(
      imagePath: Assets.imagesFlutter,
      title: 'MVVM Design Pattern',
      value: 90,
    ),
    SkillModel(
      imagePath: Assets.imagesBloc,
      title: 'BloC',
      value: 80,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            Text(
              'Skills',
              style: PortfolioTextStyles.ktsHeader(context),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Column(
          children: mySkills
              .map(
                (skillModel) => SkillListTile(skillModel: skillModel),
              )
              .toList(),
        ),
        const SizedBox(height: 12),
        const Divider(
          thickness: 2,
          color: Colors.grey,
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
