import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/extensions/seperator.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';
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
          child: ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: ListView(
              children: List.generate(
                      context.read<HomeCubit>().projectModelsList.length,
                      (index) {
                return ProjectItem(
                  projectModel:
                      context.read<HomeCubit>().projectModelsList[index],
                  index: index,
                );
              })
                  .seperator(
                    const SizedBox(
                      height: 16,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
