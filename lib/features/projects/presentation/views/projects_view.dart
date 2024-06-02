import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/features/projects/presentation/views/widgets/project_list_view.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'My Projects',
          style: AppTextStyles.ktsBigHeader(context),
        ),
        const SizedBox(
          height: 64,
        ),
        const Expanded(child: ProjectListView()),
      ],
    );
  }
}
