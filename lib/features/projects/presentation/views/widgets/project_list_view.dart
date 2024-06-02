import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/extensions/seperator.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:portfolio/features/projects/presentation/views/widgets/project_item.dart';

class ProjectListView extends StatelessWidget {
  const ProjectListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: ListView(
          children: List.generate(
            context.read<HomeCubit>().projectModelsList.length,
            (index) {
              return ProjectItem(
                projectModel:
                    context.read<HomeCubit>().projectModelsList[index],
                index: index,
                itemHeight: 120,
              );
            },
          )
              .seperator(
                const SizedBox(
                  height: 16,
                ),
              )
              .toList(),
        ));
  }
}
