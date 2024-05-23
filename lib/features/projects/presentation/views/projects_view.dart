import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/core/widgets/custom_grid_view.dart';
import 'package:portfolio/features/main/presentation/view_models/main_cubit/main_cubit.dart';
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
        const SizedBox(
          height: 8,
        ),
        Expanded(
          child: CustomGridView(
            itemCount: context.read<MainCubit>().projectModelsList.length,
            itemBuilder: (context, index) {
              return ProjectItem(
                projectModel:
                    context.read<MainCubit>().projectModelsList[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
