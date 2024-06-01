import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/features/projects/data/models/project_model.dart';

class ProjectItemPhoto extends StatelessWidget {
  const ProjectItemPhoto({
    super.key,
    required this.projectModel,
    required this.index,
    required this.height,
  });

  final ProjectModel projectModel;
  final int index;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.kcSecondary,
      ),
      child: Stack(
        children: [
          Positioned(
            right: 20,
            bottom: 15,
            height: height,
            child: Opacity(
              opacity: 0.5,
              child: Image.network(
                projectModel.photoLink,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 20,
            child: Text(
              (index + 1).toString().length == 1
                  ? '0${(index + 1).toString()}'
                  : (index + 1).toString(),
              style: AppTextStyles.ktsBigHeader(context),
            ),
          ),
        ],
      ),
    );
  }
}
