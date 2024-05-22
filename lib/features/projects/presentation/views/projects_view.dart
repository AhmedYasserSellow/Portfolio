import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/core/widgets/custom_grid_view.dart';
import 'package:portfolio/features/projects/data/models/project_model.dart';
import 'package:portfolio/features/projects/presentation/views/widgets/project_item.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'My Projects',
          style: AppTextStyles.ktsBigHeader,
        ),
        Expanded(
          child: CustomGridView(
            itemCount: 16,
            itemBuilder: (context, index) {
              return const ProjectItem(
                projectModel: ProjectModel(
                  description:
                      'sfdggfhgfhghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhsfdggfhgfhghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhsfdggfhgfhghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhsfdggfhgfhghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhsfdggfhgfhghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhsfdggfhgfhghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh',
                  link: '',
                  name: 'Padel Club Booking Service',
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
