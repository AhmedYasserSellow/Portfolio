import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/features/projects/data/models/project_model.dart';
import 'package:portfolio/features/projects/presentation/views/widgets/project_button.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectItemDetails extends StatelessWidget {
  const ProjectItemDetails({
    super.key,
    required this.projectModel,
  });

  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            projectModel.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.ktsHeader.copyWith(
              fontSize: 24,
            ),
          ),
          Text(
            projectModel.description,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const Expanded(child: SizedBox()),
          ProjectButton(
            onTap: () async {
              await launchUrlString(
                projectModel.link,
              );
            },
          )
        ],
      ),
    );
  }
}
