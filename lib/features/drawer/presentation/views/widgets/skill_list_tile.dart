import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/features/drawer/data/models/skill_model.dart';

class SkillListTile extends StatelessWidget {
  const SkillListTile({
    super.key,
    required this.skillModel,
  });
  final SkillModel skillModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(
            skillModel.imagePath,
            height: 16,
          ),
          title: Text(
            skillModel.title,
            style: AppTextStyles.ktsHeader(context),
          ),
          trailing: Text(
            '${skillModel.value}' '%',
            style: AppTextStyles.ktsNormal(context),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: LinearProgressIndicator(
            borderRadius: BorderRadius.circular(16),
            value: skillModel.value / 100,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
