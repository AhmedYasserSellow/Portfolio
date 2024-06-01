import 'package:flutter/material.dart';
import 'package:portfolio/core/extensions/responsive_text.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/features/projects/data/models/project_model.dart';
import 'package:portfolio/features/projects/presentation/views/widgets/project_button.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectItemDetails extends StatelessWidget {
  const ProjectItemDetails({
    super.key,
    required this.projectModel,
    required this.height,
  });

  final ProjectModel projectModel;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            projectModel.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.ktsHeader(context).copyWith(
              fontSize: 24.toResponsiveFontSize(context),
            ),
          ),
          Text(
            projectModel.description,
            maxLines: 2,
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
