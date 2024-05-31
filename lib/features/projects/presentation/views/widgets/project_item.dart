import 'package:flutter/material.dart';
import 'package:portfolio/features/projects/data/models/project_model.dart';
import 'package:portfolio/features/projects/presentation/views/widgets/project_item_details.dart';
import 'package:portfolio/features/projects/presentation/views/widgets/project_item_photo.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({
    super.key,
    required this.projectModel,
    required this.index,
    required this.itemHeight,
  });
  final ProjectModel projectModel;
  final int index;
  final double itemHeight;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ProjectItemPhoto(
            projectModel: projectModel,
            index: index,
            height: itemHeight,
          ),
        ),
        const SizedBox(
          width: 32,
        ),
        Expanded(
          child: ProjectItemDetails(
            projectModel: projectModel,
            height: itemHeight,
          ),
        ),
      ],
    );
  }
}
