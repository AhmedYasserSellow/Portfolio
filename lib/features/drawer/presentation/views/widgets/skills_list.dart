import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/features/drawer/presentation/views/widgets/skill_list_tile.dart';
import 'package:portfolio/features/main/presentation/view_models/main_cubit/main_cubit.dart';

class SkillsList extends StatelessWidget {
  const SkillsList({super.key});

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
              style: AppTextStyles.ktsHeader,
            ),
          ],
        ),
        const SizedBox(height: 12),
        Column(
          children: context
              .read<MainCubit>()
              .skillsModelList
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
