import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/features/projects/presentation/views/widgets/project_item.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'My Projects',
          style: AppTextStyles.ktsBigHeader(context),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return const ProjectItem(
                title: 'Padel Club',
              );
            },
          ),
        ),
      ],
    );
  }
}
