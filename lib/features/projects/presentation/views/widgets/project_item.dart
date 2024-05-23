import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_images.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/features/drawer/data/models/social_media_model.dart';
import 'package:portfolio/features/drawer/presentation/views/widgets/social_media_button.dart';
import 'package:portfolio/features/projects/data/models/project_model.dart';
import 'package:portfolio/features/projects/presentation/views/widgets/Image_viewer.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({
    super.key,
    required this.projectModel,
  });
  final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          ImageViewer(
            context,
            projectModel.photoLink,
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                projectModel.name,
                style: AppTextStyles.ktsHeader,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const Expanded(
                child: SizedBox(
                  height: 8,
                ),
              ),
              Text(
                projectModel.description,
                style: AppTextStyles.ktsNormal,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const Expanded(
                child: SizedBox(
                  height: 8,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Check on github',
                    style: AppTextStyles.ktsNormal.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  SocialMediaButton(
                    socialMediaModel: SocialMediaModel(
                      imagePath: Assets.imagesGithub,
                      linkURL: projectModel.link,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
